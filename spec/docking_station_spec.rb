require 'docking_station'

describe DockingStation do
  it "responds to release_bike" do #New instance to respond to release_bike method.
    expect(subject).to respond_to :release_bike #Expect the 'subject' i.e. instance, to respond to the release_bike method.
end
end

=begin

Shorter option:
describe DockingStation do
it { is_expected.to respond_to :release_bike}
end

#respond_to => The instance and method are connected.
#is_expected => What we are expecting to see in the programme.
#.to => To do something.
#:release_bike => A method.


#Note: Always run rspec from the project directory, not in spec or lib.

#Feature test is testing the interaction between the Object and Messages.
#Unit test is testing a slice of functionality in a system.

#Ruby errors are thrown when there is an issue with the syntax of a programme.
#Rspec failures occur when a unit test does not meet the requirements of the spec.

#in IRB, the path of the required file is neccessary e.g. ./lib/DockingStation
# Rspec automatically tells Ruby to look in the /lib directory

=end
