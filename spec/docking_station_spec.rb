require "docking_station"

describe DockingStation do
  it "returns DockingStation to respond to the method release_bike" do
    expect(subject).to respond_to(:release_bike)
  end

#Release bike no longer creates new bike
  # it "should create a new bike when release_bike method is called" do
  #   expect(subject.release_bike).to be_instance_of(Bike)
  # end

  it "should dock respond to the dock method" do
    expect(subject).to respond_to(:dock).with(1).argument
  end


#Release bike no longer creates new bike
  # it "should dock the bike we are giving it" do
  #   bike = subject.release_bike
  #   expect(subject.dock(bike)).to eq(bike)
  # end

  it "should raise an error because there's no bike" do
    expect{subject.release_bike}.to raise_error("No bikes at the station")
  end


  it "should raise an error when dock is full" do
    docking_station = DockingStation.new(40)
    40.times { docking_station.dock Bike.new}
    expect{docking_station.dock(Bike.new)}.to raise_error("Docking station is full")
  end


  context "#initialize" do
    context "with parameters" do
      let(:station) { DockingStation.new(10) }

      it "should use specified values" do
        expect(station.capacity).to eq 10
      end
    end

    context "without parameters" do
      let(:station) { DockingStation.new }

      it "should use defaults" do
        expect(station.capacity).to eq 20
      end
    end
  end
  # it "should dock more then one bike" do
  #   subject.dock(Bike.new)
  #   bike = Bike.new
  #   expect(subject.dock(bike)).to eq bike
  # end
end
