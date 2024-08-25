import { Component, inject } from '@angular/core';
import { Router,RouterOutlet,RouterModule } from '@angular/router';

import { NavbarComponent } from '../navbar/navbar.component';
import { SidebarComponent } from '../sidebar/sidebar.component';

@Component({
  selector: 'app-base',
  standalone: true,
  imports: [RouterOutlet,RouterModule,NavbarComponent,SidebarComponent],
  templateUrl: './base.component.html',
  styleUrl: './base.component.scss'
})
export class BaseComponent {

  // router = inject(Router)

}
