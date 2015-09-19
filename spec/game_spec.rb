require 'game'

describe Game do

  describe "play" do
    it 'Player wins when player choose rock and computer choose scissors' do
      game = Game.new
      computer_player = double(:fake_computer_player, choice:'scissors'.to_sym)
      # allow(computer_player).to receive(:choice).and_return(:rock)
      computer_choice = computer_player.choice
      player_choice = :rock
      expect(game.play(player_choice,computer_choice)).to eq('Player1 wins!')
    end
  end

end
