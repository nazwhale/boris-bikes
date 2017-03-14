# Errors Explained

When in the irb environment and attempting to set the variable 'docking station' equal to a new instance of DockingStation the following error occured:

*Connies-MacBook-Pro:boris-bikes conniereinholdsson$ irb
2.4.0 :001 > docking_station = DockingStation.new
NameError: uninitialized constant DockingStation
	from (irb):1
	from /Users/conniereinholdsson/.rvm/rubies/ruby-2.4.0/bin/irb:11:in `<main>'*

### 1. Type of error: NameError
Raised when a given name is invalid or undefined.
In the above case, this error has been thrown as the constant DockingStation has not been initialized, so ruby does not know what it is.

### 2. File path:
from /Users/conniereinholdsson/.rvm/rubies/ruby-2.4.0/bin/irb:11:in `<main>'

### 3. line number of error: (irb):1 / irb:11
(irb): 1 => the error occurred on line 1 of the irb environment.
irb:11 => the error occurred on line 11 within the irb programme. Not particularly useful as all it does is explain where irb encountered the error.

Solution:
In order to solve the error, the DockingStation class needs to be created and initialized
e.g.
class DockingStation
  def initialize
  end
end
