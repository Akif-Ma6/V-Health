import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import {MatInputModule} from '@angular/material/input';
import { HttpClientModule } from '@angular/common/http';

import { ActivationRoutingModule } from './activation-routing.module';


@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    ActivationRoutingModule,
    MatInputModule,
    HttpClientModule
  ]
})
export class ActivationModule { }
