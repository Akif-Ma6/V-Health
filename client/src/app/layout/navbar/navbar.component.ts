import { Component,inject } from '@angular/core';
import { Router } from '@angular/router';

import { CookieService } from 'ngx-cookie-service';


@Component({
  selector: 'app-navbar',
  standalone: true,
  imports: [],
  templateUrl: './navbar.component.html',
  styleUrl: './navbar.component.scss'
})
export class NavbarComponent {
  cookieService = inject(CookieService)
  router = inject(Router)

  logout() {
    this.cookieService.delete('session-token')
    this.cookieService.delete('user-id');
    this.router.navigate(['/']); // Adjust the route as needed
  }

  goToProfile() {
    // Redirect to profile page
    this.router.navigate(['/profile']); // Adjust the route as needed
  }

}
