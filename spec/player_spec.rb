require 'player'

describe Player do

  it "should respond to #throw_gesture" do
    expect(subject).to respond_to(:throw_gesture)
  end

  it "should have a @gesture after #throw_gesture" do
    subject.throw_gesture
    expect(subject).to respond_to(:gesture)
  end

end