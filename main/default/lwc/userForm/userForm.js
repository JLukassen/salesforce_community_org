import { LightningElement, api } from 'lwc';
import loadContactId from '@salesforce/apex/customerList.getMostRecentContactsId';



export default class FieldValueCreateExample extends LightningElement {
    @api recordId;

    
    connectedCallback(){
        this.loadData();
    }

    loadData(){
        loadContactId().then(contactId => {
            this.recordId = contactId;
        });
    }
}