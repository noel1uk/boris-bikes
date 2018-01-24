require "docking_station"

describe DockingStation do
  it "returns DockingStation to respond to the method release_bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it "should create a new bike when release_bike method is called" do
    expect(subject.release_bike).to be_instance_of(Bike)
  end
end
