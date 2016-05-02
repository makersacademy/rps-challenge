require 'computer_player'

describe ComputerPlayer do
  subject(:comp) {described_class.new}
  let(:gesture_arr) {described_class::RPS_GESTURES}
  let(:gesture_extended_arr) {described_class::RPS_EXTENDED}

  it "is called 'RoboRPS'" do
    expect(comp.name).to eq 'RoboRPS'
  end

  it 'starts with 0 score' do
    expect(comp.score).to eq 0
  end

  it 'choice of rock, paper or scissor by default' do
    spock_and_lizard = [:spock,:lizard]
    comp.choose
    expect(gesture_arr).to include comp.gesture
    expect(spock_and_lizard).not_to include comp.gesture
  end

  it 'can be extended to include spock and lizard' do
    comp_extended = ComputerPlayer.new :spock_and_lizard
    comp_extended.choose
    expect(gesture_extended_arr).to include comp_extended.gesture
  end

  describe '#choose' do
    it 'fixes the computers choice' do
      comp.choose
      expect(comp.gesture).to eq comp.gesture
    end
  end

  describe "#add_point" do
    it 'increases score by one' do
      expect{comp.add_point}.to change{comp.score}.by 1
    end
  end

end
