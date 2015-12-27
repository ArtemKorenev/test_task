module Header
  def initialize(driver)
    @driver = driver
  end

  def navigateToLeads
    @driver.a(:id, 'nav-leads').click
    return LeadsPage.new(@driver)
  end

  def navigateToSettings
    @driver.li(:id, 'user-dd').a.click
    @driver.li(:class, 'settings').a.click
    return SettingsPage.new(@driver)
  end

end