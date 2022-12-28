import { LightningElement } from 'lwc';

export default class ParentComponent extends LightningElement {
// file name : parentComponent    // camel Case
// Javascript Class : ParentComponent   // Capital Case
// kebap Case <c-parent-component>
message='';
parentInput='';

clickHandle(event){
  this.message=this.parentInput;
}
onChangeHandler(event){
    this.parentInput=event.target.value;
}

}