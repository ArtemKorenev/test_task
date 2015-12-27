require 'spec_helper'
require_relative '../../test_task/lib/header.rb'

class NewLeadPage  < AbstractPage
  include Header

  def initialize(driver)
    super(driver)
  end

  def createNewLead last_name
    @driver.input(:id, 'lead-last-name').to_subtype.value = "#{last_name}"
    @driver.button(:class, 'save').click
    return EditLeadPage.new(@driver)
  end
end