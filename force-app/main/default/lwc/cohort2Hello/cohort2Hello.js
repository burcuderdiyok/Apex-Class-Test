import { LightningElement,track } from 'lwc';

export default class Cohort2Hello extends LightningElement {
    //track decorator is no longer needed since 2020
    fname='';
    lname='';

    //track decorator is an oblication  **obje**
    @track fullName={
        firstName:'',
        lastName:''

    }
    messageChangeHandler(event){
        //console.log(event.target.name);
        //console.log(event.target.value);

        if(event.target.name=='firstName'){
            this.fullName.firstName=event.target.value;
        }
        if(event.target.name=='lastName'){
            this.fullName.lastName=event.target.value;
        }
    }
    messageSent(event){
        console.log(this.fname);
        console.log(this.lname);
        console.log(this.fullname);
    }
}