require 'spec_helper'
require_relative '../../test_task/lib/header.rb'

class LeadsPage  < AbstractPage
  include Header

  def initialize(driver)
    super(driver)
  end

  def navigateToNewLead
    @driver.a(:id, 'leads-new').click
    return NewLeadPage.new(@driver)
  end

  def navigateToLeadDetailsPage
    @driver.a(:class, 'lead-name').click
    return EditLeadPage.new(@driver)
  end
end