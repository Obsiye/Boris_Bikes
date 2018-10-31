require 'docking_station'

describe DockingStation do

  let(:docking_station) { DockingStation.new }

  it { expect(docking_station).to respond_to(:release_bike) }
  it { expect(docking_station.release_bike).to be_instance_of(Bike) }

  it "gets a bike and expect it to work" do
    expect(docking_station.release_bike.working?).to eq true
  end
  
  it "allows you to #dock a bike" do
    expect(subject).to respond_to(:dock)
  end

  it "can see that a bike is docked" do
   
    bike = docking_station.release_bike
    docking_station.dock(bike)
    expect(docking_station.docked_bike).to be_instance_of(Bike)

  end

end
