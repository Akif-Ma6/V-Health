import { Component, inject, OnInit } from '@angular/core';
import { MatInputModule } from '@angular/material/input';
import { MatButtonModule } from '@angular/material/button';
import { FormBuilder, ReactiveFormsModule, Validators } from '@angular/forms';

import { ToastrService } from 'ngx-toastr';
import { AuthService } from '../../services/auth.service';
import { CookieService } from 'ngx-cookie-service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-sign-in',
  standalone: true,
  imports: [MatInputModule, MatButtonModule, ReactiveFormsModule],
  templateUrl: './sign-in.component.html',
  styleUrl: './sign-in.component.scss'
})
export class SignInComponent implements OnInit {

  ngOnInit(): void {
    const token = this.cookieService.get('session-token')
    if(token){
      this.router.navigate(['/auth/home'])
    }else{
      
    }
  }

  toaster = inject(ToastrService)
  authService = inject(AuthService)
  cookieService = inject(CookieService)
  router = inject(Router)


  formBuilder = inject(FormBuilder);
  loginForm = this.formBuilder.group({
    email: ['', [Validators.required, Validators.email]],
    password: ['', [Validators.minLength(6)]]
  });

  login() {
    this.authService.loginUser(this.loginForm.value).subscribe({
      next: (result: any) => {
        console.log("Login result: ", result.data)
        this.cookieService.set('session-token', result.data.token);
        this.cookieService.set('user-id', result.data.id);
        this.toaster.success("Login Success", "Success");
        this.router.navigate(['/auth/home'])
      },
      error: (err: any) => {
        this.toaster.error("Login Failed", "Failed");

      },
      complete: () => { }
    })
  }

  showSuccess() {
  }

}
