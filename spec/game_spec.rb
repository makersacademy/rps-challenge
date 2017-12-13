require 'game'

describe Game do

  subject(:game) { Game.new_game('Ricky Martin') }

  context 'Initialization' do
    it 'Initializes a new player eq to arg' do
      expect(game.player_1).to eq 'Ricky Martin'
    end
  end

  context '#play' do
    it 'stores play in log' do    
      allow(game.engine).to receive(:new_play) { [:win, 'rock'] }
      game.play('')
      expect(game.log).to eq [[:win, 'rock']]
    end
  end

  context '#print_log' do
    before do
      allow(game.engine).to receive(:new_play) { [:win, 'rock'] }
      3.times { game.play('') }
      allow(game.engine).to receive(:new_play) { [:lose, 'rock'] }
      game.play('')
      allow(game.engine).to receive(:new_play) { [:draw, 'rock'] }
      2.times { game.play('') }
    end
    
    it 'Returns a string with accumulated results' do
      expected_return_string = "3 wins, 1 losses, and 2 draws"
      expect(game.print_log).to eq expected_return_string
    end
  end
end
