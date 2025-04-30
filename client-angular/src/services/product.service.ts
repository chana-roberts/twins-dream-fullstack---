//https://localhost:7046/api/Product

import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { product } from '../classes/product';
import { Observable } from 'rxjs';
import { HttpClientModule } from '@angular/common/http';
import { purchaseDetails } from '../classes/purchaseDetails';
import { gender } from '../classes/gender';
import { category } from '../classes/category';
import { HttpParams } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class ProductService {

  constructor(public http:HttpClient) { }
basicUrl:string="https://localhost:7045/api/Product"
// שליפת מוצרים
  GetProduct():Observable<Array<product>>
  {
    return this.http.get<Array<product>>(`${this.basicUrl}/all`)
  }

public gender:Array<gender>=new Array<gender>();
public category:Array<category>=new Array<category>();


public allPr: Array<product> = new Array<product>()

// ערכת מוצרים
SetProducts(p:Array<product>)
  {
    this.allPr=p
    
  }
// קבלת מוצרים
GetProducts()
{
  return this.allPr
}
x:number=-1;
y:number=-1
// סינוינם קריאת שרת עם פרמטרים לפי השימיוש
filter(g:number,c:number):Observable<Array<product>>
{   

 if(g!=-1&&c!=-1)
{
  const params = new HttpParams()
  .set("gender", g.toString())
  .set("category",c.toString());
   return this.http.get<Array<product>>(`${this.basicUrl}/filter`,{params})
}
if(g!=-1)
  {
    const params = new HttpParams()
    .set("gender", g.toString())
   
     return this.http.get<Array<product>>(`${this.basicUrl}/filter`,{params})
  }
 
      const params = new HttpParams()
      .set("category",c.toString());
       return this.http.get<Array<product>>(`${this.basicUrl}/filter`,{params})
    
}
// משתנה גלובלי למוצר עבור פרטים נוספים
public productForDetails:product=new product(-1,"p","d",-1,-1,"c","c",-1,"g",-1,"i");
  }

