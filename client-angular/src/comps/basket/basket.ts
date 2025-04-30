import { Component, OnInit } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { error, log } from 'console';
import { ProductService } from '../../services/product.service';
import { AddUserService } from '../../services/add-user.service';
import { purchaseDetails } from '../../classes/purchaseDetails';
import { FormsModule } from '@angular/forms';
import { BasketService } from '../../services/purchaseDetails.service';
import { ProductComponent } from '../product/product';
import { product } from '../../classes/product';
import { NgIf } from '@angular/common';
import { NotificationService } from '../../services/notification.service';


@Component({
  selector: 'basket',
  standalone: true,
  imports: [FormsModule],

  templateUrl: './basket.html',
  styleUrl: './basket.css'
})

export class BasketComponent {
[x: string]: any;
  title = 'Our Products';
  
  //private ps: ProductService; 
  constructor(public bs:BasketService,public ps:ProductService,public us:AddUserService,private ns:NotificationService){
    //this.ps=ps;
  }
  ngOnInit(): void {
    
        this.get()

  }

// public allP: Array<product> = new Array<product>()
allP: Array<product> = new Array<product>()
basket:Array<purchaseDetails>= new Array<purchaseDetails>();
// מתפלת במוצרים ובסל
get() {
//   // basket:Array<purchaseDetails>= new Array<purchaseDetails>();
this.ps.GetProduct().subscribe(
  d => {  
    this.ps.SetProducts(d) 
this.allP= this.ps.GetProducts()
 console.log(this.allP);
 console.log(this.allP[0].image);
//  console.log(this.allP[0].Image);
 
  },
  err => { console.log("error " + err.message) }
)



this.basket=this.bs.getBasket();

console.log(this.allP);
console.log(this.basket);

}


// הוספה במוצר
add(f:purchaseDetails)
{
  // this.bs.addToBasket(f)
f.Amount=f.Amount!+1;
}
// הפחתה במוצר
reduce(f:purchaseDetails)
{
  if(f.Amount!>0)
    f.Amount=f.Amount!-1;

}



// תשלום : מעדכנת את כל פרטי הקניה כולל עדכון קניה בעצמה מחשבת מחיר לתשלום כולל הנחות יום הולדת והנחות כלליןת, כמובן כל זה נעשה בשרת...
pay(list:Array<purchaseDetails>)
{

  
  let r=-1
  if(this.us.getUser().id!=undefined)
    r=this.us.getUser().id!
  
  let b = this.us.getUser().birthday!=undefined ? new Date(this.us.getUser().birthday!).getMonth() : -1;

 let d=5;
this.bs.SetBasket(list,r,b)
.subscribe(
  s=>{let y=s;
    console.log(s)
    console.log(s.toString)
    d=s*80/23.2
    d=Math.floor(d)
    this.ns.showSuccess(`התשלום בוצע בהצלחה! הסכום לתשלום הינו ${s} ש"ח וקוד הקנייה הינו: ${d}`, 'תשלום');
  },
  e=>{this.ns.showError('תקלה, התשלום לא עבד...')
    console.log(e.message)}
)
}

  
}
