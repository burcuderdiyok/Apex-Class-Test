import { LightningElement ,api} from 'lwc';
export default class ComponentLife extends LightningElement {
  @api title;
  constructor(){
    super();
   console.log('Child constructor is working.....');
  }
  connectedCallback(){
    console.log('Child connectedCallback is working');
  }
  renderedCallback(){
    console.log('Child renderedCallback is working....');
  }
  disconnectedCallback(){
    console.log('Child disconnectedCallback is working....');
  }
  errorCallback(err,Stack){
    console.log('Child errorCallback is working .....');
    console.log(err);
    console.log(Stack);
  }
}