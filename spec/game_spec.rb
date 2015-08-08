require 'game'

describe Game do
  let(:player_1) {double 'diego'}

  context 'with a computer' do
    let(:computer_player) {double 'computer'}
    let(:new_game) {Game.new player_1, computer_player}

    it 'registers player_1' do
      expect(new_game.player_1).to be player_1
    end

    it 'registers player_2' do
      expect(new_game.player_2).to eq computer_player
    end


  end
end