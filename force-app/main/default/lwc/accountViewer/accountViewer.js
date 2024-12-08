import { LightningElement, wire } from "lwc";
import getAccounts from "@salesforce/apex/AccountViewerController.getAccounts";

class AccountViewer extends LightningElement {
  offset = 0;

  @wire(getAccounts, { offset: "$offset" }) wiredAccounts;

  get accountsToShow() {
    if (!Array.isArray(this.wiredAccounts.data)) {
      return [];
    }
    return this.wiredAccounts.data;
  }
}

export default AccountViewer;
