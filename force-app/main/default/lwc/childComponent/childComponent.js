import { api, LightningElement } from 'lwc';

export default class ChildComponent extends LightningElement {
// file name : childComponent    // camel Case
// Javascript Class name : ChildComponent   // Capital Case
// kebap Case <c-child-component>
   
@api parentMessage;
    connectedCallback(){
      console.log('ConnectedCallback is working....');
      console.log(this.parentMessage);
    }

}