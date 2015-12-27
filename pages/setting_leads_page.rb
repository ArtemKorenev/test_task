require 'spec_helper'
require_relative '../../test_task/lib/header.rb'

class SettingsLeadsPage
  include Header

  def initialize(driver)
    super(driver)
  end

  def navigateToSettingsLeadsStatus
    @driver.ul(:id, 'leads-settings-tabs').a(:text, 'Lead Statuses').click
    return SettingsLeadsStatusPage.new(@driver)
  end
end