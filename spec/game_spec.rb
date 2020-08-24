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
      game.players_choice(:Rock)
      expect(game.players_choice(:Rock)).to eq :Rock
    end
  end

  describe '#computer_choice' do
    it 'Should store player weapon choice' do
      allow(computer).to receive(:random_weapon) {:Paper}
      game.computer_choice
      expect(game.computer_choice).to eq :Paper
    end
  end

  describe '#result' do
    it 'Should return the result' do
      allow(computer).to receive(:random_weapon) {:Paper}
      game.players_choice(:Rock)
      game.computer_choice
      allow(weapon).to receive(:who_wins).with(:Rock, :Paper) { :Lost }
      expect(game.result).to eq :Lost
    end
  end

end
