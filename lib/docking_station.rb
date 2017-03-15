require_relative 'bike'
#In this challenge, you will pass instances of the Bike class into a DockingStation instance.
#You will store those Bike instances as an attribute of the DockingStation instance, using an instance variable.
#Then, use an attribute reader to allow access to the instance variable from the DockingStation public interface.
class DockingStation

  def release_bike
    Bike.new
  end
    #=> #<Bike:0x007fd8e78b2c80> = bike
  def dock(bike)
    @bike = bike
  end
end
