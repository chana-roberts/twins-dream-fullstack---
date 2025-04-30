import { Component, OnInit } from '@angular/core';
import { RouterLink, RouterOutlet } from '@angular/router';
import { error, log } from 'console';
import { ProductService } from '../services/product.service';
import { product } from '../classes/product';
import { FormsModule, NgModel } from '@angular/forms';
import { ProductComponent } from '../comps/product/product';
import { HttpClientModule } from '@angular/common/http';
import { AddUserComponent } from '../comps/add-user/add-user.component';
import { BasketComponent } from '../comps/basket/basket';
import { user } from '../classes/user';
import { AddUserService } from '../services/add-user.service';


@Component({
  selector: 'app-root',
  standalone: true,
  imports: [FormsModule,RouterOutlet,RouterLink],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent implements OnInit {
  title = 'Our Products';
  constructor(public us:AddUserService){}
  user1:user=new user()
  ngOnInit(): void {
    console.log("app") 
      
      this.user1=this.us.getUser()
  }
}
