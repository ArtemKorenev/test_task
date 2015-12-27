require 'spec_helper'
require_relative '../../test_task/lib/header.rb'

class SettingsPage < AbstractPage
  include Header

  def initialize(driver)
    super(driver)
  end

  def navigateToSettingsLeads
    @driver.ul(:class, 'nav-list').a(:text, 'Leads').click
    return SettingsLeadsPage.new(@driver)
  end
end
