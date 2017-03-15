require 'docking_station'

describe DockingStation do
  it "responds to release_bike" do #New instance to respond to release_bike method.
    expect(subject).to respond_to :release_bike #Expect the 'subject' i.e. instance, to respond to the release_bike method.
end

  it "gets a bike and checks the bike is working" do
    bike = Bike.new
    expect(bike.working?).to eq true
  end

  #test to dock a bike at a docking station
  it { is_expected.to respond_to(:dock).with(1).argument }

  #ability to remember docked bikes
  it { is_expected.to respond_to(:bike) }

  #ability to report docked bikes
  it "checks if bike has been docked" do
    bike = Bike.new
    #We want to return the bike we dock
    expect(subject.dock(bike)).to eq bike
  end


  it "return all docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    #return bikes
    expect(subject.bike).to eq bike
  end
  describe '#release_bike' do
    it "gives error message when user tries to release bikes and there are none" do
      #if subject.bike == nil
        expect { subject.release_bike }.to raise_error("No bikes available")
      end
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end
end


#subject is the instance of the class, testiable instance.

#station is an instance of a class DockingStation.
#call .release_bike, and assign to bike.

=begin

describe Bike do
it { is_expected.to respond_to :working?}
end

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
