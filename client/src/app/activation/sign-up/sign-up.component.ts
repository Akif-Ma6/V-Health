import { Component, inject } from '@angular/core';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { Router } from '@angular/router';
// import { ToastrService } from 'ngx-toastr';

import { AuthService } from '../../services/auth.service';
import { MatInputModule } from '@angular/material/input';
import { MatButtonModule } from '@angular/material/button';

@Component({
  selector: 'app-sign-up',
  standalone: true,
  imports: [MatInputModule,MatButtonModule,ReactiveFormsModule],
  templateUrl: './sign-up.component.html',
  styleUrl: './sign-up.component.scss'
})
export class SignUpComponent{

  authService = inject(AuthService)

formBuilder = inject(FormBuilder);
registerForm = this.formBuilder.group({
  name:['',[Validators.required]],
  email:['',[Validators.required,Validators.email]],
  password:['',[Validators.minLength(6)]]
});

register(){
  this.authService.registerUser(this.registerForm.value).subscribe({
    next:(result:any)=>{
      console.log("Login result: ",result)
      if(result.data){
      console.log("Login is Successful.")
      }else{
        console.log("Something went wrong")
      }
    },
    error:(err:any)=>{},
    complete:()=>{}
  })
}
  

  
}
