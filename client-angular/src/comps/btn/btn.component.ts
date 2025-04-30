import { Component, EventEmitter, Input, Output } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Router } from 'express';


@Component({
  selector: 'app-button',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './btn.comonent.html',
  styleUrl: './btn.component.css'
})
export class ButtonComponent {
 

  @Input() text: string | undefined
  @Input() icon: string | undefined
  @Output() btn = new EventEmitter()

  select() {
    this.btn.emit()

  }
}
