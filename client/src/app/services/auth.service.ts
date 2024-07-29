import { inject, Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';
import { AppService } from './app.service';
import { HttpClient } from '@angular/common/http';

@Injectable({
    providedIn: 'root'
  })
  export class AuthService {
    constructor() {}
    http = inject(HttpClient)

    loginUser(data:any){
        return this.http.post(AppService.base_url+AppService.authentication+AppService.sign_in,data)
      }

      registerUser(data:any){
        return this.http.post(AppService.base_url+AppService.authentication+AppService.sign_up,data)
      }
  }