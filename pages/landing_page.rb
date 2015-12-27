require 'spec_helper'

class LandingPage < AbstractPage
  def initialize(driver)
    super(driver)
  end

  def navigateToLoginPage
    @driver.link(:text, "Log In").click
    if  $app.getPageTitle == 'Login to Base'
      return LoginPage.new(@driver)
    else
      return DashboardPage.new(@driver)
    end
  end 
end