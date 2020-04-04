require 'game'
require 'player'

describe Game do
  subject(:game) { Game.new(player_1) }
  let(:player_1) { double :player, name: 'Adam F' }

  describe '#initialize' do
    it 'creates a player' do
      expect(game.player_1).to eq player_1
    end
    it 'player has a name' do
      expect(game.player_1.name).to eq 'Adam F'
    end
  end

  describe '#store_answer' do
    it 'can store the users answer' do
      game.store_answer('Rock')
      expect(game.answer).to eq 'Rock'
    end
  end

  describe '#generate_computer_answer' do
    it 'can generate a answer for the computer' do
      game.generate_computer_answer
      expect(['Rock', 'Paper', 'Scissors']).to include(game.computer_answer)
    end
  end

  describe '#outcome' do
    context 'can work out who wins' do
      it 'player can win' do
        game.store_answer('Paper')
        game.computer_answer = 'Rock'
        game.outcome
        expect(game.winner).to eq player_1.name
      end
      it 'computer wins' do
        game.store_answer('Rock')
        game.computer_answer = 'Paper'
        game.outcome
        expect(game.winner).to eq 'Computer'
      end
      it 'can be a draw' do
        game.store_answer('Rock')
        game.computer_answer = 'Rock'
        game.outcome
        expect(game.winner).to eq 'draw'
      end
    end
  end

  describe '#display_outcome' do
    it 'can display a winner' do
      game.winner = game.player_1.name
      expect(game.display_outcome).to eq 'Adam F won!'
    end
    it 'can be a draw' do
      game.winner = 'draw'
      expect(game.display_outcome).to eq 'It was a draw!'
    end
  end
end
