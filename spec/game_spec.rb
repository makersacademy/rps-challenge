require 'game'

describe Game do
  let(:player1) { double :player }

  let(:game) { described_class.new(player1) }
  let(:kernel) { double :kernel }

  it 'returns rock if random number is 0' do
    allow(kernel).to receive(:rand).with(3).and_return(0)
    game.comp_choose(kernel)
    expect(game.comp_choice).to eq "Rock"
  end

  it 'returns paper if random number is 1' do
    allow(kernel).to receive(:rand).with(3).and_return(1)
    game.comp_choose(kernel)
    expect(game.comp_choice).to eq "Paper"
  end

  it 'returns scissors if random number is 2' do
    allow(kernel).to receive(:rand).with(3).and_return(2)
    game.comp_choose(kernel)
    expect(game.comp_choice).to eq "Scissors"
  end

  it "tells you if you've won" do
    allow(kernel).to receive(:rand).with(3).and_return(2)
    allow(player1).to receive(:choice).and_return("Rock")
    game.comp_choose(kernel)
    game.determine_outcome
    expect(game.outcome).to eq "You win!"
  end

  it "tells you if you've lost" do
    allow(kernel).to receive(:rand).with(3).and_return(1)
    allow(player1).to receive(:choice).and_return("Rock")
    # game.player.choice = "Rock"
    game.comp_choose(kernel)
    game.determine_outcome
    expect(game.outcome).to eq "You lose!"
  end

  it "tells you if it's a draw" do
    allow(kernel).to receive(:rand).with(3).and_return(0)
    allow(player1).to receive(:choice).and_return("Rock")
    # game.player.choice = "Rock"
    game.comp_choose(kernel)
    game.determine_outcome
    expect(game.outcome).to eq "It's a draw!"
  end

  context "for 2 player game" do
    let(:player2) { double :player }
    it "tells you if player1 has won" do
      allow(player1).to receive(:name).and_return("Jenny")
      allow(player1).to receive(:choice).and_return("Rock")
      # game.choice2 = "Scissors"
      allow(player2).to receive(:choice).and_return("Scissors")
      game.add_player(player2)
      game.friend_determine_outcome
      expect(game.outcome).to eq "Jenny wins!"
    end

    it "tells you if player2 has won" do
      allow(player2).to receive(:name).and_return("Johnny")
      allow(player1).to receive(:choice).and_return("Scissors")
      allow(player2).to receive(:choice).and_return("Rock")
      # game.choice2 = "Rock"
      game.add_player(player2)
      game.friend_determine_outcome
      expect(game.outcome).to eq "Johnny wins!"
    end

    it "tells you if it's a draw" do
      allow(player1).to receive(:choice).and_return("Rock")
      # game.choice2 = "Rock"
      allow(player2).to receive(:choice).and_return("Rock")
      game.add_player(player2)
      game.friend_determine_outcome
      expect(game.outcome).to eq "It's a draw!"
    end

  end

end
