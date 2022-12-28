public class QueueableAccount implements Queueable {
	@TestVisible private static Boolean queueableAccountRun = true;
	List<Lead> leadsList = new List<Lead>();
    
// Constructor to get list of new Leads inserted
	public QueueableAccount(List<Lead> leadsList) {
		this.leadsList = leadsList;
	}
    
	public void execute(System.QueueableContext qc) {
		Map<Lead,Account> leadsWithAccounts = new Map<Lead,Account>();
        
// Add account for each Lead in the list "accountsList" and insert list
	for(Lead lead : leadsList) {
		Account newAcc = new Account(Name = lead.Company,
        Industry = lead.Industry,
        BillingStreet = lead.Street,
        BillingCity = lead.City,
        BillingState = lead.State,
        BillingCountry = lead.Country,
        BillingPostalCode =
        lead.PostalCode);
        leadsWithAccounts.put(lead, newAcc);
	}
		insert leadsWithAccounts.values();
	}
}