require 'watir'
require 'rspec'
require 'byebug'

Before do
  browser = Watir::Browser.new(:chrome)
  browser.driver.manage.window.maximize
  @browser = browser
  @browser.cookies.clear rescue warn 'Sem cookies salvos'

  page = lambda { |b, klass| klass.new b }.curry.(@browser)
  @page = page
end

After do
  @browser.close
end
