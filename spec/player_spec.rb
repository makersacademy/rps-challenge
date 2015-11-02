require 'player'

describe Player do
  
  subject(:player) { described_class.new(player_name)}
  let(:player_name) {'Dave'}

  describe 'initialization' do
    it {is_expected.to respond_to(:name)}
    it {is_expected.to respond_to(:hand)}
  end

  describe '#weapon' do
    it "puts a weapon in the player's hand" do
      player.weapon(:wet_fish)
      expect(player.hand).to eq :wet_fish
    end
  end

  describe '#clear_hand' do
    it { is_expected.to respond_to(:clear_hand)}

    it "clears the player's hand" do
      player.weapon(:rock)
      player.clear_hand
      expect(player.hand).to eq nil
    end
  end
end