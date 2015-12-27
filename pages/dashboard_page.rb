require 'spec_helper'
require_relative '../../test_task/lib/header.rb'

class DashboardPage < AbstractPage
  include Header
  def initialize(driver)
    super(driver)
  end
end