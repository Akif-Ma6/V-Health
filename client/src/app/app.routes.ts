import { Routes,RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';

export const routes: Routes = [

    {
        path: '',
        loadChildren: () => import('./activation/activation.module').then(m => m.ActivationModule)
    },
    {
        path: 'auth',
        loadChildren: () => import('./apps/apps.module').then(m => m.AppsModule)
    },
];

