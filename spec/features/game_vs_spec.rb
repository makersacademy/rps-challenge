require 'game_vs'

describe GameVs do
  subject(:game){described_class.new("Tom", "Bob")}

  it "has game rules where rock beats scissors" do
    expect(Game::RULES[:rock]).to eq :scissors
  end

  it "has game rules where paper beats rock" do
    expect(Game::RULES[:paper]).to eq :rock
  end

  it "has game rules where scissors beats paper" do
    expect(Game::RULES[:scissors]).to eq :paper
  end

  it "initializes a game with two players" do
    expect(game.player1.name).to eq "Tom"
    expect(game.player2.name).to eq "Bob"
  end

  context "saves weapon choice" do

    before do
      game.player1.pick(:rock)
      game.player2.pick(:rock)
      game.choice
    end

    it "of player 1" do
      expect(game.player1_choice).to eq :rock
    end

    it "of player 2" do
      expect(game.player2_choice).to eq :rock
    end

    it "and returns the result" do
      expect(game.result).to eq :draw_vs
    end
  end

end
