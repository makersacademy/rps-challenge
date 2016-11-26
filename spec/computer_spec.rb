require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  #let(:rock) { double :rock }

  it "has a weapon attribute which is nil by default" do
    expect(computer.weapon).to be_nil
  end

  it { is_expected.to respond_to(:choose_weapon) }

  it "can select a weapon at random" do
    allow(Game::WEAPONS).to receive(:sample) { :rock }
    computer.choose_weapon
    expect(computer.weapon).to eq :rock
  end
end
