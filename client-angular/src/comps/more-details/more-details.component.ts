import { Component } from '@angular/core';
import { ProductService } from '../../services/product.service';
import { product } from '../../classes/product';
import { Location } from '@angular/common';

@Component({
  selector: 'app-more-details',
  standalone: true,
  imports: [],
  templateUrl: './more-details.component.html',
  styleUrl: './more-details.component.css'
})
export class MoreDetailsComponent {

    title = 'Our Products';
    constructor(public ps:ProductService,public l:Location){}
    ngOnInit(): void {
        this.get()
        
    }
    product1:product=new product(-1,"p")

  // מקבלת את המוצר לתצוגה
   get() {
  // this.allP=this.ps.GetProducts() 
    this.product1=this.ps.productForDetails
  }
  // חזרה למוצרים
  back()
  {
    this.l.back()
  }
  
}
