require "game"

describe Game do
  let(:player_red) { double("Player 1", :name => "Red", :computer? => false) }
  let(:player_blue) { double("Player 2", :name => "Blue", :computer? => false) }
  let(:player_computer) { double("Computer", :name => "COMPUTER", :computer? => true) }
  let(:solo_game) { Game.new(player_red, player_computer) }
  let(:multi_game) { Game.new(player_red, player_blue) }

  describe '#single_game?' do
    it 'returns true if Player 2 is the computer, false otherwise' do
      expect(solo_game.single_game?).to eq true
      expect(multi_game.single_game?).to eq false
    end
  end

end
