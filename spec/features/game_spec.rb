require 'game'

describe Game do
  subject(:game){described_class.new("Tom")}

  it "has game rules where rock beats scissors" do
    expect(Game::RULES[:rock]).to eq :scissors
  end

  it "has game rules where paper beats rock" do
    expect(Game::RULES[:paper]).to eq :rock
  end

  it "has game rules where scissors beats paper" do
    expect(Game::RULES[:scissors]).to eq :paper
  end

  it "initializes a game with a player" do
    expect(game.player.name).to eq "Tom"
  end

  it "initializes a game with a computer" do
    expect(game.computer.com_name).to eq "Bob"
  end

  context "saves weapon choice" do

    before do
      game.player.pick(:rock)
      allow(game.computer).to receive(:pick).and_return(:rock)
      game.computer.pick
      game.choice
    end

    it "of player" do
      expect(game.player_choice).to eq :rock
    end

    it "of computer" do
      expect(game.computer_choice).to eq :rock
    end

    it "and returns the result" do
      expect(game.result).to eq :draw
    end
  end

end
