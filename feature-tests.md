require './lib/docking_station'
station = DockingStation.new
bike = station.release_bike
station.dock(bike)
station.bike
