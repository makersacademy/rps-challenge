require 'player'

describe Player do
  
  subject(:player) { described_class.new(player_name)}
  let(:player_name) {'Dave'}

  describe 'initialization' do
    it {is_expected.to respond_to(:name)}
    it {is_expected.to respond_to(:hand)}
  end

  describe '#rock' do
    it 'sets player hand to ROCK' do
      player.rock
      expect(player.hand).to eq :rock
    end
  end

  describe '#paper' do
    it 'sets player hand to PAPER' do
      player.paper
      expect(player.hand).to eq :paper
    end
  end

  describe '#scissors' do
    it 'sets player hand to SCISSORS' do
      player.scissors
      expect(player.hand).to eq :scissors
    end
  end

  describe '#clear_hand' do
    it { is_expected.to respond_to(:clear_hand)}

    it "clears the player's hand" do
      player.rock
      player.clear_hand
      expect(player.hand).to eq nil
    end
  end
end