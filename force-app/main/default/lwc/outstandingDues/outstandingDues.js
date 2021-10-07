import { LightningElement,track,api } from 'lwc';
import getOutstandingDues from '@salesforce/apex/amountDue.getDues';


export default class ContactOutstandingDues extends LightningElement {
  
   @track amountDues;
   @api recordId;
  


   connectedCallback() {
       getOutstandingDues({ contactId: this.recordId})
           .then(result => {
               console.log('result',result);
               this.amountDues=result[0].expr0;
               console.log('oustandindDues',amountDues);
           })
           .catch(error => {
               this.error = error;
           });
   }
}