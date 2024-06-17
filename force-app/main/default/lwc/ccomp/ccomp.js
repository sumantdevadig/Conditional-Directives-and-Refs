import { LightningElement } from 'lwc';

export default class Ccomp extends LightningElement {
    constructor(){
        super();
        console.log("Child constructor is called");
    }
    connectedCallback(){
        console.log("Child connected call back called");
    }
    renderedCallback(){
        console.log("Child rendered call back is called");
    }
    disconnectedCallback(){
        console.log("Child disconnected call back called");
    }
    errorCallback(){
        console.log("Child error call back called");
    }
}