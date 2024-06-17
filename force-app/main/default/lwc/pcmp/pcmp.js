import { LightningElement } from 'lwc';
 
export default class pcmp extends LightningElement {
    constructor()
    {
        super();
        console.log("Parent constructor is called");
    }
    connectedCallback()
    {
        console.log("Parent connected CallBack called");
    }
    renderCallback()
    {
        console.log("Parent rendered CallBack called");
    }
    disconnectedCallback()
    {
        console.log("Parent disconnected CallBack called");
    }
    errorCallback()
    {
        console.log("Parent error Call back Called");
    }
    handleClick()
    {
        if(this.isVisible==True)
        {
            this.isVisible=false;
        }else{
            this.isVisible=true;
        }
    }
}