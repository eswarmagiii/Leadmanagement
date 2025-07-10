import { LightningElement, wire } from 'lwc';
import getTopHotLeads from '@salesforce/apex/HotLeadsController.getTopHotLeads';

export default class TopHotLeads extends LightningElement {
    leads;

    @wire(getTopHotLeads)
    wiredLeads({ error, data }) {
        if (data) {
            this.leads = data;
        } else if (error) {
            console.error(error);
        }
    }
}
