import { Routes } from '@angular/router';
import { ProductComponent } from '../comps/product/product';
import { AddUserComponent } from '../comps/add-user/add-user.component';
import { BasketComponent } from '../comps/basket/basket';
import { LogInComponent } from '../comps/log-in/log-in.component';
import { HomeComponent } from '../comps/home/home.component';
import { MoreDetailsComponent } from '../comps/more-details/more-details.component';
export const routes: Routes = [

    {path:'products',component:ProductComponent},
    {path:'register',component:AddUserComponent},
    {path:'basket',component:BasketComponent},  
    {path:'log-in',component:LogInComponent},
    {path:'',component:HomeComponent},
    {path:'details',component:MoreDetailsComponent}

];
