

// import { publicDecrypt } from "crypto";

export class product{
    constructor(public id:number, public name:string,
        public description?:string, public price?:number,
        public categoryId?:number,
        public category?:string,public company?:string,
        public genderId?:number,
        public gender?:string,public inventory?:number,
        public image?:string
    ){}
   
}

