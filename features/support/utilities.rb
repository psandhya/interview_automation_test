
class Utilities
  attr_accessor :driver
  
  def initialize(driver)
    @driver=driver
  end
  def WaitForElement(element)
	wait = Selenium::WebDriver::Wait.new(:timeout => 30)
	wait.until {element}	
  end
  def GetDataFromDataTable(table)
    table.transpose.raw.inject({}) do |hash, column|
  column.reject!(&:empty?)
  hash[column.shift] = column
  hash
  end
  end
end