require 'game'

describe Game do

  let(:player){ Player.new("Macey Forever") }
  let(:computer){ Computer.new }
  subject(:game){ Game.new(computer, player) }

  before (:each) do
    allow(computer).to receive(:choose_at_random).and_return("spock")
  end

  describe 'choices hash' do
    it 'adds a weapon to hash when selected' do
      game.add_selection(computer.choose_at_random, player.choose("scissors"))
      expect(game.choices).to include("spock")
      expect(game.choices).to include("scissors")
    end
  end

  context 'winning and losing' do
    describe 'when player wins' do
      it 'assigns player as winner' do
        game.add_selection(computer.choose_at_random, player.choose("paper"))
        expect(game.winner).to eq player
      end
    end

    describe 'when computer wins' do
      it 'assigns computer as winner' do
        game.add_selection(computer.choose_at_random, player.choose("rock"))
        expect(game.winner).to eq computer
      end
    end
  end

  context 'draw' do
    it 'assigns neither player nor computer as winner' do
      game.add_selection(computer.choose_at_random, player.choose("spock"))
      expect(game.winner).not_to eq player
      expect(game.winner).not_to eq computer
    end
  end

end
