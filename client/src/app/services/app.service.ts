import { environment } from "../../environments/environment";
import { Injectable } from '@angular/core';


@Injectable({
    providedIn: 'root'
})

export class AppService {
    constructor() { }

    public static base_url = environment.client_backend
    public static authentication = "/api/user"
    
    
    public static sign_up = "/signup"
    public static sign_in = "/login"

}