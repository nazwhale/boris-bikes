require_relative 'bike'

class DockingStation
attr_reader :bike

  def release_bike
    fail "No bikes available" unless @bike
    @bike
  end

  def dock(bike)
    #Use an instance variable to store the bike in the 'state' of this instance
    fail "Docking station full" if @bike != nil
    @bike = bike
  end
end
