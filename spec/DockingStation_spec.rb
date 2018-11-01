require 'docking_station'

describe DockingStation do
  let(:docking_station) { DockingStation.new }
  let(:bike) { Bike.new }

  it { expect(docking_station).to respond_to(:release_bike) }
  
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

# it "gets a bike and expect it to work" do
#   expect(subject.release_bike.working?).to eq true
# end

it "allows you to #dock a bike" do
expect(subject).to respond_to(:dock)
end

# it "can see that a bike is docked" do
#   bike = docking_station.release_bike
#   docking_station.dock(bike)
#   expect(docking_station.docked_bike).to be_instance_of(Bike)
# end

it "raises an error when when release_bike is called on an empty docking station" do 
  expect {subject.release_bike}.to raise_error 'No bikes available'
end

it "raises an error when when #dock is called on an full docking station" do 
  20.times {subject.dock(Bike.new)}
  expect {subject.dock(Bike.new)}.to raise_error 'Docking station full'
end

end
