require 'game'

describe Game do
  let(:player1) { double :player }
  let(:comp) { double :player }
  let(:game) { described_class.new(player1) }
  let(:kernel) { double :kernel }

  context "playing the computer" do
    it "tells you if you've won" do
      allow(player1).to receive(:choice).and_return("Rock")
      allow(player1).to receive(:name).and_return("Jenny")
      allow(comp).to receive(:choice).and_return("Scissors")
      game.add_player(comp)
      game.friend_determine_outcome
      expect(game.outcome).to eq "Jenny wins!"
    end

    it "tells you if you've lost" do
      allow(player1).to receive(:choice).and_return("Rock")
      allow(comp).to receive(:choice).and_return("Paper")
      allow(comp).to receive(:name).and_return("Computer")
      game.add_player(comp)
      game.friend_determine_outcome
      expect(game.outcome).to eq "Computer wins!"
    end

    it "tells you if it's a draw" do
      allow(player1).to receive(:choice).and_return("Rock")
      allow(comp).to receive(:choice).and_return("Rock")
      game.add_player(comp)
      game.friend_determine_outcome
      expect(game.outcome).to eq "It's a draw!"
    end
  end

  context "for 2 player game" do
    let(:player2) { double :player }
    it "tells you if player1 has won" do
      allow(player1).to receive(:name).and_return("Jenny")
      allow(player1).to receive(:choice).and_return("Rock")
      allow(player2).to receive(:choice).and_return("Scissors")
      game.add_player(player2)
      game.friend_determine_outcome
      expect(game.outcome).to eq "Jenny wins!"
    end

    it "tells you if player2 has won" do
      allow(player2).to receive(:name).and_return("Johnny")
      allow(player1).to receive(:choice).and_return("Scissors")
      allow(player2).to receive(:choice).and_return("Rock")
      game.add_player(player2)
      game.friend_determine_outcome
      expect(game.outcome).to eq "Johnny wins!"
    end

    it "tells you if it's a draw" do
      allow(player1).to receive(:choice).and_return("Rock")
      allow(player2).to receive(:choice).and_return("Rock")
      game.add_player(player2)
      game.friend_determine_outcome
      expect(game.outcome).to eq "It's a draw!"
    end

  end

end
