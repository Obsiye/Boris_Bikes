require 'docking_station'

describe DockingStation do 
  it { expect(DockingStation.new).to respond_to(:release_bike) }
  it { expect(:release_bike).to eq Bike.new }
end
