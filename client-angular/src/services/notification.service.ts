import { Injectable } from '@angular/core';
import { ToastrService } from 'ngx-toastr';

@Injectable({
  providedIn: 'root' // אין צורך להוסיף את זה ב-main.ts
})

// הקפצת הודעות
export class NotificationService {
  constructor(private toastr: ToastrService) {}

  showSuccess(message: string, title: string = 'הצלחה') {
    this.toastr.success(message, title);
  }

  showError(message: string, title: string = 'שגיאה') {
    this.toastr.error(message, title);
  }

  showInfo(message: string, title: string = 'מידע') {
    this.toastr.info(message, title);
  }

  showWarning(message: string, title: string = 'אזהרה') {
    this.toastr.warning(message, title);
  }
}
