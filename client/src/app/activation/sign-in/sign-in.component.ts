import { Component, inject } from '@angular/core';
import { MatInputModule } from '@angular/material/input';
import {MatButtonModule} from '@angular/material/button';
import { FormBuilder, ReactiveFormsModule, Validators } from '@angular/forms';

import { AuthService } from '../../services/auth.service';
@Component({
  selector: 'app-sign-in',
  standalone: true,
  imports: [MatInputModule,MatButtonModule,ReactiveFormsModule],
  templateUrl: './sign-in.component.html',
  styleUrl: './sign-in.component.scss'
})
export class SignInComponent{

  authService = inject(AuthService)

formBuilder = inject(FormBuilder);
loginForm = this.formBuilder.group({
  email:['',[Validators.required,Validators.email]],
  password:['',[Validators.minLength(6)]]
});

login(){
  this.authService.loginUser(this.loginForm.value).subscribe({
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
