import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { AddUserService } from '../../services/add-user.service';
import { user } from '../../classes/user';
import { NotificationService } from '../../services/notification.service';



@Component({
  selector: 'app-add-user',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './add-user.component.html',
  styleUrl: './add-user.component.css'
})
export class AddUserComponent implements OnInit {
  title = 'LogIn';
  constructor(public us:AddUserService,private ns:NotificationService){}
  public user:user=new user();
  ngOnInit(): void {
       this.user=this.us.getUser();
       console.log("start")
       console.log(this.us.getUser())
  }
 
 
// לשמירת משתמש חדש
save(){
   this.us.setUser(this.user);
  //  this.us.SetCostumer(this.user)
  console.log(this.user)
  this.us.register(this.user).subscribe(response => {
    console.log('wellcome', response);
    // שמירת הקוד עבור ההמשך (רישום קניה וכו)
   this.user.id=response;
     // הודעת הצלחה על הרשמה
     this.ns.showSuccess('ברוך הבא','נרשמת בהצלחה!')

  }, error => {

    console.error('Error:', error);
  });
  }
}
