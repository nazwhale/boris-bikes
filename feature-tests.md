require './lib/docking_station'
station = DockingStation.new
station.release_bike
bike = Bike.new
station.dock(bike)
bike = Bike.new
station.dock(bike)
