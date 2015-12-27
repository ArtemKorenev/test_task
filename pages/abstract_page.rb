require 'spec_helper'

class AbstractPage
  @driver = nil

  def initialize(driver)
    @driver = driver
  end

  def navigateToAppRoot
    @driver.goto 'http://getbase.com'
    return LandingPage.new(@driver)
  end

  def quit
    @driver.quit
  end

  def getPageTitle
    return @driver.title
  end
end