require 'docking_station.rb'

describe Bike do
  it { expect(subject).to respond_to(:working?) }

  it "allows you to #dock a bike" do
    expect(subject).to respond_to(:dock)
  end

end
