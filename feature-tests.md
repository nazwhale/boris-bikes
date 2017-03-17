require './lib/docking_station'
station = DockingStation.new
bike = Bike.new
bike.break
station.dock(bike)
station.unload_broken(van)

#I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.


if bike.working? == false
  bike to be delivered

  bikes = []
  to_be_delivered = []
  bikes.each do |b|
    to_be_delivered << b unless b.working?
    bikes.delete(b) unless b.working?
  end
 end
