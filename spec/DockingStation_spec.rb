require 'docking_station'

describe DockingStation do 
docking_station = DockingStation.new

  it { expect(docking_station).to respond_to(:release_bike) }
  it { expect(docking_station.release_bike).to be_instance_of(Bike) }

  it "gets a bike and expect it to work" do
    expect(docking_station.release_bike.working?).to eq true
  end

end
