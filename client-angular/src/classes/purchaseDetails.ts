

// import { publicDecrypt } from "crypto";

export class purchaseDetails{
    constructor(public Id:number|undefined, public ProductId:number,
        public Amount?:number, public ShoppingId?:number,
        public Price?:number,public Description?:string|undefined,
        public Inventory?:number,
    public Image?:string,  public Name?:string,
       
    
  
    ){

    }
 
}
