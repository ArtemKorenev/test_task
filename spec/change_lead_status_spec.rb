require 'spec_helper'

describe "test task" do
  after(:all) do
    change_leads_status = $app
                .navigateToAppRoot
                .navigateToLoginPage
                .navigateToSettings
                .navigateToSettingsLeads
                .navigateToSettingsLeadsStatus
                .editFirstStatus 'New'
  end

  it "change lead status" do
    log_in = $app
                .navigateToAppRoot
                .navigateToLoginPage
                .login('korenev78@gmail.com', '1234567890')

    new_lead = log_in
                .navigateToLeads
                .navigateToNewLead
                .createNewLead "New lead"

    expect(new_lead.leadStatus).to eq 'New'

    change_leads_status = new_lead
                .navigateToSettings
                .navigateToSettingsLeads
                .navigateToSettingsLeadsStatus
                .editFirstStatus 'Test'

    lead = change_leads_status
                .navigateToLeads
                .navigateToLeadDetailsPage

    expect(lead.leadStatus).to eq 'Test'
  end
end