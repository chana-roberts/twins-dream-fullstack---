//https://localhost:7046/api/Product

import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { product } from '../classes/product';
import { Observable } from 'rxjs';
import { HttpClientModule } from '@angular/common/http';
import { purchaseDetails } from '../classes/purchaseDetails';
import { AddUserService } from './add-user.service';
import { HttpParams } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class BasketService {

  //HttpClient הזרקת משתנה מסוג 
  // במשתנה זה יש פונקציות עבור כל סוגי הבקשות
  constructor(public http:HttpClient) { }

  basicUrl:string="https://localhost:7045/api/ShoppingBasket"
  // לערוך סל
  SetBasket(basket:Array<purchaseDetails>,costumerId:number,month:number):Observable<number>
  {
    console.log("setbasket")
    const params = new HttpParams()
    .set("CostumerId", costumerId.toString())
    .set("month", month.toString());
   
    return this.http.post<number>(`${this.basicUrl}`,basket,{params})
  }
  private b = new Array<purchaseDetails>();
// לקבל סל
  getBasket()
  {
    return this.b;
  }
// הוספה לסל
  addToBasket(p:product )
{
  // console.log("b")
let  b:Array<purchaseDetails>=this.b;
let f:Boolean=false;
b.forEach(element => {
  console.log(element.ProductId)
  if(element.ProductId == p.id&&element.Amount)
    {element.Amount=element.Amount+1;
    f=true;}
});

if(f==false)
{
  let f=p.id>=0?p.id:-1
  let value: purchaseDetails = new purchaseDetails(undefined,f,1,-1,p.price??0,p.description,0,p.image,p.name);
  this.b.push(value);
 console.log(this.b)
}

  }

}
