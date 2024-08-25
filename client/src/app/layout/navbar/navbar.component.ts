import { Component,inject } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-navbar',
  standalone: true,
  imports: [],
  templateUrl: './navbar.component.html',
  styleUrl: './navbar.component.scss'
})
export class NavbarComponent {

  router = inject(Router)

  logout() {
    // Clear user session or authentication token
    // Redirect to login page or home page
    this.router.navigate(['/login']); // Adjust the route as needed
  }

  goToProfile() {
    // Redirect to profile page
    this.router.navigate(['/profile']); // Adjust the route as needed
  }

}
