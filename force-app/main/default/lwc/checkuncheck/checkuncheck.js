import { LightningElement, track } from 'lwc';

export default class Checkuncheck extends LightningElement {

    @track value = 'Checkbox is Checked';
    
    click()
    {
        this.value = 'Checkbox is not Checked';
    }
}