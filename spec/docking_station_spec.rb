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
  it { is_expected.to respond_to(:bikes) }

  #ability to report docked bikes
  it "checks if bike has been docked" do
    bike = Bike.new
    #We want to return the bike we dock
    expect(subject.dock(bike)).to eq [bike]
  end

  it "return all docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    #return bikes
    expect(subject.bikes).to eq [bike]
  end

  it "gives error message when user tries to dock bike and docking station is full" do
    20.times { subject.dock Bike.new }
    expect { subject.dock Bike.new }.to raise_error("Docking station full")
  end


  describe '#release_bike' do
    it "gives error message when user tries to release bikes and there are none" do
        expect { subject.release_bike }.to raise_error("No bikes available")
      end

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq [bike]
    end
  end
end
