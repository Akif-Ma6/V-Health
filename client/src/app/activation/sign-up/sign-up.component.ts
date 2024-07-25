import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-sign-up',
  standalone: true,
  imports: [],
  templateUrl: './sign-up.component.html',
  styleUrl: './sign-up.component.scss'
})
export class SignUpComponent implements OnInit{

  constructor( private router: Router,
  ){

  }
  ngOnInit(): void {
    
  }
  login(){
    this.router.navigate(["/"])

  }
}
