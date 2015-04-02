require 'game'

describe Game do
  let(:game){Game.new}
  let(:player_one){double :player, choice: :rock, name: :Joe}
  let(:player_two){double :player, choice: :scissors, name: :Computer}
   let(:player_three){double :player, choice: :rock, name: :Bob}

    it "can add a player" do
      game.add_player(player_one)
      expect(game.player_one).to eq player_one
    end

    it "can add a second player" do
      game.add_player(player_one)
      game.add_player(player_two)
      expect(game.players.length).to eq 2
    end

    it "can decide the winner" do
      expect(game.winner(player_one,player_two)).to eq :Joe
    end

    it "can declare a draw" do
      expect(game.winner(player_one,player_three)).to eq :draw
    end  

end