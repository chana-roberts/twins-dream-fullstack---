import { Injectable } from '@angular/core';
import { user } from '../classes/user';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { HttpParams } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class AddUserService {

  constructor(public http:HttpClient) { }

basicUrl:string="https://localhost:7045/api/costumer"
// רישום
  register(user:user):Observable<number>
  {
    return this.http.post<number>(`${this.basicUrl}/add`,user)
   
  }
// התחברות
  logIn(user:user):Observable<user>
  {
    const params = new HttpParams()
    .set("m", user.mail!.toString())
    .set("n", user.name!.toString());
    return this.http.get<user>(`${this.basicUrl}/login`,{params})  

  }
// משתמש נוכחי
private currentUser:user=new user();
// עריכת משתמש נוכחי
public setUser(s:user)
{
  
  this.currentUser=s;
  console.log("setUser on service") 
  console.log(s)
}
// קבלת משתמש נוכחי
public getUser()
{
  return this.currentUser;
}
}
