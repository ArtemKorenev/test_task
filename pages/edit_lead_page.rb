require 'spec_helper'
require_relative '../../test_task/lib/header.rb'


class EditLeadPage < AbstractPage
  include Header
  def initialize(driver)
    super(driver)
  end

  def leadStatus
    @driver.span(:class, 'lead-status').text
  end
end