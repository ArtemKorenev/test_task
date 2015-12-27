require 'spec_helper'

class LoginPage < AbstractPage
  def initialize(driver)
    super(driver)
  end 

  def login username, password
    @driver.text_field(:id, 'user_email').set username
    @driver.text_field(:id, "user_password").set password
    @driver.button(text: "Log in").click
    return DashboardPage.new(@driver)
  end
end