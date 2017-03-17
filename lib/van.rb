class Van

  def initialize
    @bikes_in_van = []
  end

  def collect_from_station(station)
    station.load_van
  end

  attr_reader :bikes_in_van
end
