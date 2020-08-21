require 'game'

describe Game do
  subject(:game) {described_class.new(tam, weapon, computer)}
  let(:tam) {double :player, name: :Tam }
  let(:weapon) {double :weapon}
  let(:computer) {double :computer}

  describe '#player_name' do
    it 'Should show name of player' do
      expect(game.player_name).to eq(:Tam)
    end
  end

  describe '#player_choice' do
    it 'Should store player weapon choice' do
      game.player_choice(:rock)
      expect(game.player_choice(:rock)).to eq :rock
    end
  end

  describe '#computer_choice' do
    it 'Should store player weapon choice' do
      allow(computer).to receive(:random_weapon) {:paper}
      game.computer_choice
      expect(game.computer_choice).to eq :paper
    end
  end

end
