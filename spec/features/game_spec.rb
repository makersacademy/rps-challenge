require 'game'

describe Game do

  subject(:game) { Game.new('rock') }

  it 'creates instances of game' do
    expect(game).to be_instance_of Game
  end

  describe '# computer_action' do 
    it 'randomly selects an action from rock, paper or scissors' do
      expect(game.computer_action).to eq('rock').or eq('paper').or eq('scissors')
    end
  end

  describe '# return_winner' do
    context 'when player picks rock and computer picks rock' do
      it 'calls a draw' do
        allow(game).to receive(:random_choice).and_return('rock')
        expect(game.return_winner).to eq 'Draw'
      end
    end

    context 'when player picks rock and computer picks paper' do
      it 'returns that computer has won' do
        allow(game).to receive(:random_choice).and_return('paper')
        expect(game.return_winner).to eq 'Computer Wins!'
      end
    end

    context 'when player picks rock and computer picks scissors' do
      it 'returns that player has won' do
        allow(game).to receive(:random_choice).and_return('scissors')
        expect(game.return_winner).to eq 'Player Wins!'
      end
    end
  end

end
