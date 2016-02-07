require 'game'

# I HAVE NO IDEA WHAT I'M DOING!

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

  describe '#result' do
    describe 'player with rock' do
      # allow(game).to receive(:player_weapon).and_return(rock)
      it 'checks that player wins with rock' do
        game.start_game(bob_weapon)
        expect(game.player_win).to eq true
      end
      it 'checks that player loses with rock' do
      end
      it 'checks that player draws with rock' do
      end
    end
    describe 'player with paper' do
      it 'checks that player wins with paper' do
        expect(game.player_win).to eq true
      end
      it 'checks that player loses with paper' do
      end
      it 'checks that player draws with paper' do
      end
    end
    describe 'player with scissors' do
      it 'checks that player wins with scissors' do
        expect(game.player_win).to eq true
      end
      it 'checks that player loses with scissors' do
      end
      it 'checks that player draws with scissors' do
      end
    end

    describe 'computer with rock' do
      it 'checks that computer wins with rock' do
      end
      it 'checks that computer loses with rock' do
      end
      it 'checks that computer draws with rock' do
      end
    end
    describe 'computer with paper' do
      it 'checks that computer wins with paper' do
      end
      it 'checks that computer loses with paper' do
      end
      it 'checks that computer draws with paper' do
      end
    end
    describe 'computer with scissors' do
      it 'checks that computer wins with scissors' do
      end
      it 'checks that computer loses with scissors' do
      end
      it 'checks that computer draws with scissors' do
      end
    end
end

end
