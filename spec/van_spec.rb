require 'van'
require 'docking_station'

describe Van do

  let (:docking_station) {double :docking_station}
  let (:bike) { double :bike}


  it "has bikes_in_van instance variable" do
    expect(subject).to respond_to(:bikes_in_van)
  end

  it "can pick up broken bikes from the docking station" do
    allow(docking_station).to receive(:load_van) {[bike, bike, bike]}

    expect(subject.collect_from_station(docking_station)).to eq [bike,bike,bike]
  end

end
