require 'game'

describe Game do
  let(:player1) {double(:player1, :name => 'Dave', :selection => nil)}
  let(:player2) {double(:player2, :name => 'Mittens', :selection => nil)}
  subject(:game) {described_class.new(player1,player2)}

  context "#player" do

    it "returns player 1 when method called" do
      expect(game.player1).to eq player1
    end

    it "returns player 2 when method called" do
      expect(game.player1).to eq player1
    end

  end

  context "#switch" do

    it "allows players to switch turns" do
      expect(game.current_player).to eq player1
      game.switch
      expect(game.current_player).to eq player2
    end

  end

  context "#both_players_chose?" do

    it "returns false when player2 has not made a selection" do
      allow(player1).to receive(:selection){"rock"}
      expect(game.both_players_chose?).to be false
    end

    it "returns false when player1 has not made a selection" do
      allow(player2).to receive(:selection){"rock"}
      expect(game.both_players_chose?).to be false
    end

    it "returns true when both have made their selection" do
      allow(player1).to receive(:selection){"rock"}
      allow(player2).to receive(:selection){"rock"}
      expect(game.both_players_chose?).to be true
    end

  end

  context "#winner" do

    it "returns Draw when same selection is made" do
      allow(player1).to receive(:selection){"rock"}
      allow(player2).to receive(:selection){"rock"}
      expect(game.winner).to eq 'Draw!'
    end

    it "returns 'Dave won' when player 1 wins" do
      allow(player1).to receive(:selection){"rock"}
      allow(player2).to receive(:selection){"scissors"}
      expect(game.winner).to eq 'Dave won!'
    end

    it "returns 'Mittens won' when player 2 wins" do
      allow(player1).to receive(:selection){"paper"}
      allow(player2).to receive(:selection){"scissors"}
      expect(game.winner).to eq 'Mittens won!'
    end

  end

end
