require 'game'

describe Game do
  let(:bob) {double :bob}
  let(:computer_klass) {double :computer_klass}
  let(:bob_weapon) {double :bob_weapon}
  subject(:game) {described_class.new(bob, computer_klass)}
  let(:computer_go) {double :computer_go}


  describe "#initialize" do
    it 'initializes with the player name' do
      expect(game.player_name).to eq bob
    end

    it 'initializes with a uninitialised computer' do
      expect(game.computer_klass).to eq computer_klass
    end
  end

  describe '#start_game' do

    before do
      allow(computer_klass).to receive(:new).and_return(computer_go)
    end

    it 'initializes a new computer turn' do
      expect(computer_klass).to receive(:new)
      game.start_game(bob_weapon)
    end

    it 'stores a new computer turn' do
      game.start_game(bob_weapon)
      expect(game.computer_turn).to eq computer_go
    end

    it 'stores the player\'s weapon' do
      game.start_game(bob_weapon)
      expect(game.player_weapon).to eq bob_weapon
    end

  end
end
