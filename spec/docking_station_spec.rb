require "docking_station"

describe DockingStation do
  it "returns DockingStation to respond to the method release_bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it "should create a new bike when release_bike method is called" do
    expect(subject.release_bike).to be_instance_of(Bike)
  end

  it "should dock respond to the dock method" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "should dock the bike we are giving it" do
    bike = subject.release_bike
    expect(subject.dock(bike)).to eq(bike)
  end

end
