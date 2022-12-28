import { LightningElement,wire } from 'lwc';
// import Apex Class method...
// import apex method from 'apex> AccountUIHandler.retrieve'
import retrieve from 
'@salesforce/apex/AccountUIHandler.retrieve';
export default class AccountListComponent 
extends LightningElement {
  search='';
  
@wire(retrieve, {searchterm:'$search'}) accounts;
inputChangeHandler(event){
 this.search=event.target.value;
}
}