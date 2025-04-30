import { Component, OnInit } from '@angular/core';
import { RouterOutlet,Router } from '@angular/router';
import { error, log } from 'console';
import { ProductService } from '../../services/product.service';
import { product } from '../../classes/product';
import { FormsModule } from '@angular/forms';
import { BasketComponent } from '../basket/basket';
import { purchaseDetails } from '../../classes/purchaseDetails';
import { BasketService } from '../../services/purchaseDetails.service';
import { gender } from '../../classes/gender';
import { NgClass, NgStyle } from '@angular/common';
import { category } from '../../classes/category';
import { PriceFormatPipe } from '../../app/price-format.pipe';
import { ChangeColorDirective } from '../changeColoor.directive';



@Component({
  selector: 'app-product',
  standalone: true,
  imports: [FormsModule,PriceFormatPipe,ChangeColorDirective],
  templateUrl: './product.html',
  styleUrls: ['./product.css','../global.css']
})

export class ProductComponent implements OnInit {
  title = 'Our Products';
  constructor(public ps:ProductService,public bs:BasketService,public route:Router){}
  ngOnInit(): void {
      this.get()
  }

allP: Array<product> = new Array<product>()
g: Array<gender> = new Array<gender>()
c: Array<category> = new Array<category>()
gender1:number=-1;
category1:number=-1;
 get() {


  this.ps.GetProduct().subscribe(
    d => {
  this.ps.SetProducts(d) 
  this.allP= this.ps.GetProducts()
   console.log(this.allP);
   this.select()
    },
    err => { console.log("error " + err.message) }
  )
 

}
// יצירת סלקטים עבור סינונים
select()
{
const uniqueGenders = new Map<number, gender>();
this.allP.forEach(x => {
  if (x.genderId&&!uniqueGenders.has(x.genderId)) {
    uniqueGenders.set(x.genderId!, new gender(x.genderId, x.gender));
  }
});
this.ps.gender = Array.from(uniqueGenders.values());

const uniqueCategories = new Map<number, category>();
this.allP.forEach(x => {
  if (x.categoryId&&!uniqueCategories.has(x.categoryId)) {
    uniqueCategories.set(x.categoryId!, new category(x.categoryId, x.category));
  }
});
this.ps.category = Array.from(uniqueCategories.values());

this.g=this.ps.gender;
console.log(this.g)
this.c=this.ps.category;
console.log(this.c)

}
// פונקצית סינון
change()
{
  console.log(this.gender1)
  console.log(this.category1)
  
  this.ps.filter(this.gender1,this.category1).subscribe(
    d => {
  this.ps.SetProducts(d) 
  this.allP= this.ps.GetProducts()
   console.log(this.allP);

    },
    err => { console.log("error " + err.message) }
  )
  
}

// הוספה לסל
add(f:product)
{
  this.bs.addToBasket(f)
  console.log(f.price)
  console.log(f.inventory)
}


// מיון לפי מחיר
SortPrice(){
  this.allP.sort((a, b) => a.price! - b.price!)
  console.log(this.allP)
}
//מיון משם 
SortName(){
this.allP.sort((a, b) => a.name.localeCompare(b.name, 'he'));
console.log(this.allP)}

// לפרטים נוספים - כוללת ניתוב
more(id:number)
{
let t=this.allP.find(x=>x.id==id)!
this.ps.productForDetails=t;
this.route.navigate([`details`])
}

}