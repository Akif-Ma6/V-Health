import { Routes, RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';

import { BaseComponent } from './layout/base/base.component';

export const routes: Routes = [

    {
        path: '',
        loadChildren: () => import('./activation/activation.module').then(m => m.ActivationModule)
    },
    {
        path: 'auth',
        component: BaseComponent,
        children: [
            {
                path: '',
                loadChildren: () => import('./apps/apps.module').then(m => m.AppsModule)

            }
        ]
    },
];

@NgModule({
    imports: [RouterModule.forRoot(routes, {scrollPositionRestoration: 'top'})],
    exports: [RouterModule]
})

export class AppsRoutingModule { }

