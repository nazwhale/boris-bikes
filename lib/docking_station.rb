require_relative 'bike'
#In this challenge, you will pass instances of the Bike class into a DockingStation instance.
#You will store those Bike instances as an attribute of the DockingStation instance, using an instance variable.

#Then, use an attribute reader to allow access to the instance variable from the DockingStation public interface.
class DockingStation
attr_reader :bike

  def release_bike
    fail "No bikes available" unless @bike
    @bike
  end

  def dock(bike)
    #Use an instance variable to store the bike in the 'state' of this instance
    @bike = bike
  end
end
