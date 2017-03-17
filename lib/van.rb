class Van

  attr_reader :bikes_in_van
  def initialize
    @bikes_in_van = []
  end

  def collect_from_station(station)
    @bikes_in_van << station.unload_broken(self)
    @bikes_in_van.flatten!
  end

end
