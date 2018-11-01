require 'docking_station'

describe DockingStation do
  let(:docking_station) { DockingStation.new }
  let(:bike) { Bike.new }

  it { expect(docking_station).to respond_to(:release_bike) }

  describe "#release_bike" do
    it 'releases a bike' do
      bike2 = Bike.new
      docking_station.dock(bike2)
      expect(docking_station.release_bike).to eq bike2
    end
  end

it "allows you to #dock a bike" do
expect(subject).to respond_to(:dock)
end

it "raises an error when when release_bike is called on an empty docking station" do 
  expect {subject.release_bike}.to raise_error 'No bikes available'
end

it "raises an error when when #dock is called on an full docking station" do 
  
DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
  expect {subject.dock(Bike.new)}.to raise_error 'Docking station full'
end

it "when no value is passed into capacity" do
   expect(docking_station.capacity).to eq DockingStation::DEFAULT_CAPACITY
end

it "when user sets capacity to a value" do
  expect(DockingStation.new(5).capacity).to eq 5
end

it "responds to report_broken method" do
  expect(docking_station.respond_to?(:report_broken)).to eq true
end

it "reports bike if broken" do
  bike.condition = "bad"
  expect(docking_station.dock(bike)).to eq true
end

it "don't release broken bikes" do
  bike.condition = "bad"
  docking_station.dock(bike)
  expect{docking_station.release_bike}.to raise_error 'No bikes available'
end

end
