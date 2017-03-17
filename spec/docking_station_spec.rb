require 'docking_station'

describe DockingStation do

  let (:bike) { double :bike }

  it "responds to release_bike" do #New instance to respond to release_bike method.
    expect(subject).to respond_to :release_bike #Expect the 'subject' i.e. instance, to respond to the release_bike method.
  end

  #test to dock a bike at a docking station
  it { is_expected.to respond_to(:dock).with(1).argument }

  #ability to report docked bikes
  it "checks if bike has been docked" do
    #We want to return the bike we dock
    expect(subject.dock(bike)).to eq [bike]
  end

  describe 'initialization' do
    it "gives error message when user tries to dock bike and docking station is full" do
      subject.capacity.times { subject.dock(bike) }
      expect { subject.dock(bike) }.to raise_error("Docking station full")
    end

    it "checks default capacity is set" do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end

  describe '#release_bike' do
    it "gives error message when user tries to release bikes and there are none" do
        expect { subject.release_bike }.to raise_error("No bikes available")
      end

    it "gives error message when user tries to release a broken bike" do
      allow(bike).to receive(:working?) {false}
      subject.dock(bike)
      expect {subject.release_bike }.to raise_error("Bike broken")
    end

    it 'releases a bike' do
      allow(bike).to receive(:working?) {true}
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

  describe 'unload_broken' do
      it 'unloads all broken bikes from docking station to van' do
        #load both broken and working bikes into station
        broken_bike = double(:bike, working?: false)
        working_bike = double(:bike, working?: true)
        5.times {subject.dock(working_bike)}
        5.times {subject.dock(broken_bike)}
        subject.unload_broken
        expect(subject.bikes).not_to include broken_bike
      end

    end

  describe 'dock' do
    it 'lets user report broken bike when docking it' do
      allow(bike).to receive(:working?) {false}
      expect(subject.dock(bike).last).to eq bike
    end
  end

  end
end
