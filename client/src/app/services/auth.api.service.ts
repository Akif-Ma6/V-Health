import { HttpClient } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { AppService } from "./app.service";

@Injectable({
  providedIn: 'root'
})

export class AuthService extends AppService {
  token: string | undefined

  constructor(private http: HttpClient) {
    super();
  }

  // public isLoggedIn(): boolean {
  //   const allcookies = document.cookie.split(';');
  //   const name = environment
  // }

}