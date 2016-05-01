require 'computer_player'

describe ComputerPlayer do
  subject(:comp) {described_class.new}
  let(:weapon_arr) {described_class::RPS_WEAPONS}
  it "is called 'RoboRPS'" do
    expect(comp.name).to eq 'RoboRPS'
  end

  it 'can be armed with rock' do
    allow(weapon_arr).to receive(:shuffle).and_return([:rock,:paper])
    expect(comp.weapon).to eq :rock
  end

  it 'can be armed with paper' do
    allow(weapon_arr).to receive(:shuffle).and_return([:paper,:rock])
    expect(comp.weapon).to eq :paper
  end

  it 'can be armed with scissors' do
    allow(weapon_arr).to receive(:shuffle).and_return([:scissors,:rock])
    expect(comp.weapon).to eq :scissors
  end

end
