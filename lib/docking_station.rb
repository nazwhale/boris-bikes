require_relative 'bike'

class DockingStation
attr_reader :capacity, :bikes
DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    #I'd like docking stations not to release broken bikes.
    fail "No bikes available" if empty?
    fail "Bike broken" unless @bikes.last.working?
    @bikes.pop
  end

  def dock(bike)
    #Use an instance variable to store the bike in the 'state' of this instance
    fail "Docking station full" if full?
    @bikes << bike
  end

  def unload_broken
    broken_delivery = []
    bikes.each do |bike|
      broken_delivery << bike unless bike.working?
      bikes.delete(bike) unless bike.working?
    end
    broken_delivery
  end

  #I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.

  private

  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end
