require "bike"
describe Bike do
  # it { is_expected.to respond_to :working?}

  it "should be a working bike" do
    expect(subject.working).to eq true
  end

  it "should be able to change to false" do
    subject.broken
    expect(subject.working).to eq false
  end


end
