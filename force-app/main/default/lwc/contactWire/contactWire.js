import { LightningElement, wire } from 'lwc';
import searchContacts from '@salesforce/apex/contactWire.searchContacts';

const DELAY = 100;

export default class ContactSearchDisplay extends LightningElement {
    searchKey = '';

    @wire(searchContacts, { searchKey: '$searchKey'})
    contacts;

    handleType(event) {
        window.clearTimeout(this.DELAY);
        const searchKey = event.target.value;
        this.delayTimeOut = setTimeout(() => {
            this.searchKey = searchKey;
        }, DELAY);
    }
}