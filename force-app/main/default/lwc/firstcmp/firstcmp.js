import { LightningElement } from 'lwc';

export default class Firstcmp extends LightningElement {
    name="sumant";
    isActive=false;
    handleOnChange(event){
        this.name = event.target.value;
    }
    handleOnChange1(event){
        this.isActive = event.target.checked;
    }
}