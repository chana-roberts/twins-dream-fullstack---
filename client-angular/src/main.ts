import { bootstrapApplication } from '@angular/platform-browser';
import { appConfig } from './app/app.config';
import { AppComponent } from './app/app.component';
import {Component} from '@angular/core';
import {FormsModule} from '@angular/forms';
import { importProvidersFrom } from '@angular/core';
import { provideAnimations } from '@angular/platform-browser/animations';
import { provideToastr ,ToastrModule} from 'ngx-toastr';



bootstrapApplication(AppComponent, {
  ...appConfig, // שמירה על appConfig הקיים
  providers: [
    ...(appConfig?.providers || []), // שמירה על ה-providers הקיימים
    provideAnimations(), // חובה בשביל שההודעות יעבדו
    provideToastr({
      positionClass: 'toast-top-center', // מיקום ההודעות
      timeOut: 3000, // משך הצגת ההודעה (3 שניות)
      progressBar: true, // פס טעינה להודעות
      closeButton: true, // כפתור סגירה
      tapToDismiss: false, // לא נעלם בלחיצה
      easing: 'ease-in-out', // אנימציה נעימה
      progressAnimation: 'increasing', // התקדמות אנימציה
    }),
  ],
}).catch((err) => console.error(err));