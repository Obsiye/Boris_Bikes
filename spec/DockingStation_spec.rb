require 'docking_station'

describe DockingStation do 
  it { expect(DockingStation.new).to respond_to(:release_bike) }
end
