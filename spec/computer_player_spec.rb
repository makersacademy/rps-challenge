require 'computer_player'

describe ComputerPlayer do
  subject(:comp) {described_class.new}
  let(:weapon_arr) {described_class::RPS_WEAPONS}
  it "is called 'RoboRPS'" do
    expect(comp.name).to eq 'RoboRPS'
  end

  it 'starts with 0 score' do
    expect(comp.score).to eq 0
  end

  it 'can be armed with rock' do
    allow(weapon_arr).to receive(:shuffle).and_return([:rock,:paper])
    comp.choose_weapon
    expect(comp.weapon).to eq :rock
  end

  it 'can be armed with paper' do
    allow(weapon_arr).to receive(:shuffle).and_return([:paper,:rock])
    comp.choose_weapon
    expect(comp.weapon).to eq :paper
  end

  it 'can be armed with scissors' do
    allow(weapon_arr).to receive(:shuffle).and_return([:scissors,:rock])
    comp.choose_weapon
    expect(comp.weapon).to eq :scissors
  end

  describe '#choose_weapon' do
    it 'fixes the computers choice' do
      comp.choose_weapon
      expect(comp.weapon).to eq comp.weapon
    end
  end

  describe "#add_point" do
    it 'increases score by one' do
      expect{comp.add_point}.to change{comp.score}.by 1
    end
  end

end
