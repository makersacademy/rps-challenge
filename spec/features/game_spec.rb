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
  end

end
