import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'priceFormat',
  standalone: true
})
export class PriceFormatPipe implements PipeTransform {

  transform(value: number| null | undefined): string {
    if (typeof value !== 'number' || isNaN(value)) {
      return '₪0.00';
    }
    return `₪${value.toFixed(2)}`;
  }

}
