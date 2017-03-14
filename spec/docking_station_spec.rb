require 'docking_station'

describe DockingStation do
  it "releases 'bike' when the release_bike method is called upon it" do
    docking = DockingStation.new # Instance of class needs to be created before running test
    expect(docking.release_bike).to eq 'bike'
  end
end


#Note: Always run rspec from the project directory, not in spec or lib.

#Feature test is testing the interaction between the Object and Messages.
#Unit test is testing a slice of functionality in a system.

#Ruby errors are thrown when there is an issue with the syntax of a programme.
#Rspec failures occur when a unit test does not meet the requirements of the spec.

#in IRB, the path of the required file is neccessary e.g. ./lib/DockingStation
# Rspec automatically tells Ruby to look in the /lib directory
