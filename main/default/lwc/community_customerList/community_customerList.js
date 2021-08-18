import { LightningElement } from 'lwc';
import loadContacts from '@salesforce/apex/customerList.getFiveMostRecentContacts';

export default class Community_customerList extends LightningElement {
    columns = [
        { label: 'Contact Name', fieldName: 'Name', type: 'text'},
        { label: 'Phone', fieldName: 'Phone', type: 'phone'},
        { label: 'Email', fieldName: 'Email', type: 'email'},
        { label: 'Created Date', fieldName: 'CreatedDate', type: 'datetime'}
    ];
    data;
    connectedCallback(){
        this.loadData();
    }

    loadData(){
        loadContacts().then(contacts => {
            this.data = contacts;
        });
    }
}