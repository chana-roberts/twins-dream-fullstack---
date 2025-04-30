
import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { AddUserService } from '../../services/add-user.service';
import { user } from '../../classes/user';
import { NotificationService } from '../../services/notification.service';

@Component({
  selector: 'app-log-in',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './log-in.component.html',
  styleUrl: './log-in.component.css'
})
export class LogInComponent implements OnInit {
  title = 'LogIn';
  constructor(public us:AddUserService,private ns:NotificationService){}
  public user:user=new user();
  ngOnInit(): void {
       this.user=this.us.getUser();
  }
 
//  פונקצית התחברות
save(){
   this.us.setUser(this.user);
  //  this.us.SetCostumer(this.user)
  console.log(this.user)
  this.us.logIn(this.user).subscribe(response => {
    console.log('wellcome', response);
    // שמירת הקוד עבור ההמשך (רישום קניה וכו)
   this.user=response;
   this.us.setUser(this.user)
   console.log("login")
this.ns.showSuccess('ברוך הבא','התחברת בהצלחה!')
  }, error => {
this.ns.showError('אולי תנסה להרשם...','ההתחברות נכשלה...')
    console.error('Error:', error);
  });
  }
}

