require 'docking_station'

describe DockingStation do
  let(:docking_station) { DockingStation.new }
  let(:dummy) { double(:bike) }


  describe "#release_bike" do
    it 'releases a bike' do
      docking_station.dock(dummy)
      expect(docking_station.release_bike).to eq dummy
    end
  end


it "raises an error when when release_bike is called on an empty docking station" do 
  expect {subject.release_bike}.to raise_error 'No bikes available'
end

it "raises an error when when #dock is called on an full docking station" do 
  
DockingStation::DEFAULT_CAPACITY.times {subject.dock(dummy)}
  expect {subject.dock(dummy)}.to raise_error 'Docking station full'
end

it "when no value is passed into capacity" do
   expect(docking_station.capacity).to eq DockingStation::DEFAULT_CAPACITY
end

it "when user sets capacity to a value" do
  expect(DockingStation.new(5).capacity).to eq 5
end


it "reports bike if broken" do
  dummy.condition = "bad"
  expect(docking_station.dock(dummy)).to eq true
end

it "don't release broken bikes" do
  dummy.condition = "bad"
  docking_station.dock(dummy)
  expect{docking_station.release_bike}.to raise_error 'No bikes available'
end

end
