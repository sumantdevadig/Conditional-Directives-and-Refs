import { getFieldValue, getRecord } from 'lightning/uiRecordApi';

import { LightningElement, api, wire } from 'lwc';

import NameField from '@salesforce/schema/Account.Name'

import PhoneField from '@salesforce/schema/Account.Phone'
 
export default class wireexample extends LightningElement {

    @api recordId

    @wire(getRecord,{recordId: '$recordId',fields:[NameField,PhoneField]}) record;

    get name(){

        return this.record.data ? getFieldValue(this.record.data, NameField) : '';

    } 

    get phone(){

            return this.record.data ? getFieldValue(this.record.data, PhoneField) : '';

    }
 
}