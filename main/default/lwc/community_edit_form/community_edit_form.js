import { api, LightningElement } from 'lwc';
import loadContactId from '@salesforce/apex/editForm.getContactId';


export default class Community_edit_form extends LightningElement {
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