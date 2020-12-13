require "game"

describe Game do
  let(:player_1_name) { double :player_1_name }
  let(:player_2_name) { double :player_2_name }
  let(:player_1_move) { double :player_1_move }
  let(:player_2_move) { double :player_2_move }
  let(:game) { Game.new(player_1_name, player_2_name) }
    
  it "returns an instance of Game" do
    expect(game).to be_an_instance_of(Game)
  end

  describe "#play_a_match" do
      
    it "counts number of games" do
      game.play_a_match(player_1_move, player_2_move)
      expect(game.round).to eq 1
    end
    it "returns player's score 1" do
      player_1_move = "Paper"
      player_2_move = "Rock"
      game.play_a_match(player_1_move, player_2_move)
      expect(game.player_1_win).to eq 1
    end
    it "returns player's score 2" do
      player_1_move = "Rock"
      player_2_move = "Rock"
      game.play_a_match(player_1_move, player_2_move)
      expect(game.ties).to eq 1
    end
    it "returns player's score 3" do
      player_1_move = "Scissor"
      player_2_move = "Paper"
      game.play_a_match(player_1_move, player_2_move)
      expect(game.player_1_win).to eq 1
    end
    it "returns player's score 4" do
      player_1_move = "Scissor"
      player_2_move = "Rock"
      game.play_a_match(player_1_move, player_2_move)
      expect(game.player_2_win).to eq 1
    end
    it "returns player's score 5" do
      player_1_move = "Rock"
      player_2_move = "Paper"
      game.play_a_match(player_1_move, player_2_move)
      expect(game.player_2_win).to eq 1
    end
    it "returns player's score 6" do
      player_1_move = "Rock"
      player_2_move = "Scissor"
      game.play_a_match(player_1_move, player_2_move)
      expect(game.player_1_win).to eq 1
    end
    it "returns player's score 7" do
      player_1_move = "Paper"
      player_2_move = "Scissor"
      game.play_a_match(player_1_move, player_2_move)
      expect(game.player_2_win).to eq 1
    end
    it "should reset the game" do
      10.times { game.play_a_match(player_1_move, player_2_move) }
      expect(game.display_reset_button).to be true
    end
    it "should not reset the game" do
      3.times { game.play_a_match(player_1_move, player_2_move) }
      expect(game.display_reset_button).to be false
    end
  end

  describe "#reset" do
    it "resets the score" do
      3.times { game.play_a_match(player_1_move, player_2_move) }
      game.reset
      expect(game.player_1_win).to eq(0)
    end

  end
end
