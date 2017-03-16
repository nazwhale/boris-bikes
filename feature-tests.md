require './lib/docking_station'
station = DockingStation.new
station.dock(Bike.new("broken"))
station.release_bike
