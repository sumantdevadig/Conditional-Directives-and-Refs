import { LightningElement,api,wire } from 'lwc';
import getAccount from '@salesforce/apex/SearchAccountInfo.getAccountDetails'
export default class Wirefun extends LightningElement {
    error;
    actlist;
    accountName;

    handleOnChangeAccountName(event)
    {
        this.accountName=event.target.value;
    }
    @wire(getAccount, {actname:'$accountName'})
    accountfun({error,data}){
        if(data)
        {
            this.actlist=data;
            this.error ='undefined';
        }
        else if(error){
            this.error=error;
            this.aclist ='undefined';
        }
    };
}