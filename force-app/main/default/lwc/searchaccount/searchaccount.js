import { LightningElement } from 'lwc';
import getAccount from '@salesforce/apex/SearchAccountInfo.getAccountDetails'
import { myMethod } from './mycommonfun';
export default class Searchaccount extends LightningElement {

    accountName;
    accountPhone;
    billingStreet;
    billingCity;
    billingState;
    billingZip;
    handleOnChangeAccountName(event){
        this.accountName = event.target.value;
        
    }

    handleOnChangeAccountPhone(event){
        this.accountPhone = event.target.value;
        
    }

    handleOnChangeBillingStreet(event){
        this.billingStreet = event.target.value;
        
    }

    handleOnChangeBillingCity(event){
        this.billingCity = event.target.value;
       
    }

    handleOnChangeBillingState(event){
        this.billingState = event.target.value;
        
    }

    handleOnChangeBillingZip(event){
        this.billingZip = event.target.value;
       
    }

    initiateSearch(event){
        this.SearchAccount = event.target.value;
        alert('Yes sir! I am ready to search');
    }
    initiateSearch(event){
        myMethod();
        alert('yes sir i got called');
        getAccount({actName:this.accountName}).
        then(results=>{this.dispatchEvent(new CustomEvent('getaccountinfo',{detail:results}));
    }).catch(error=>{console.log(error)});
    }



}