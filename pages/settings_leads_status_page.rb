require 'spec_helper'
require_relative '../../test_task/lib/header.rb'

class SettingsLeadsStatusPage
  include Header

  def initialize(driver)
    super(driver)
  end

  def editFirstStatus (name)
    @driver.span(:css, 'span[data-named-object-id="1737583"]').button(:text, 'Edit').click
    @driver.span(:css, 'span[data-named-object-id="1737583"]').input(:id, 'name').to_subtype.clear
    @driver.span(:css, 'span[data-named-object-id="1737583"]').input(:id, 'name').to_subtype.value = "#{name}"
    @driver.span(:css, 'span[data-named-object-id="1737583"]').button(:class, 'save').click
    return SettingsLeadsStatusPage.new(@driver)
  end
end