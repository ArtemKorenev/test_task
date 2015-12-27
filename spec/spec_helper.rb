require 'rspec'
require 'watir-webdriver'
require_relative '../../test_task/pages/abstract_page.rb'

client = Selenium::WebDriver::Remote::Http::Default.new
client.timeout = 180 # seconds – default is 60
driver = Watir::Browser::new :ff, :http_client => client
driver.driver.manage.timeouts.implicit_wait = 15
driver.driver.manage.window.maximize

RSpec.configure do |config|
  config.before(:all) do
    $app = AbstractPage.new(driver)
  end

  config.after(:all) do  
    $app.quit
  end
end

Dir[File.join(File.dirname(__FILE__), "..", "pages" , "**.rb")].each do |f|
  require f
end