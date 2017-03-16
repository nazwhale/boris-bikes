require_relative 'bike'

class DockingStation
attr_reader :capacity
DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    #I'd like docking stations not to release broken bikes.
    fail "No bikes available" if empty?
    @bikes[-1].working? == false ? nil : @bikes.pop
  end

  def dock(bike)

    #Use an instance variable to store the bike in the 'state' of this instance
    fail "Docking station full" if full?
    @bikes << bike
  end

  private

attr_reader :bikes

  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end
