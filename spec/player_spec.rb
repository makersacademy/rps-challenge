require "player"

describe Player do
  let (:player) {Player.new(:Tim)}

  it "has a name when initialized" do
    expect(player.name).to eq :Tim
  end

  it "can have a move assigned" do
    player.picks("Rock")
    expect(player.move).to eq(:rock)
  end

  # it "can select rock" do
  #   expect(player.select(:rock)).to be :rock
  # end
  #
  # it "can select paper" do
  #   expect(player.select(:paper)).to be :paper
  # end
  #
  # it "can select scissors" do
  #   expect(player.select(:scissors)).to be :scissors
  # end
  #
  # it "receives an error message if they select non-valid move" do
  #   expect{player.select(:hat)}.to raise_error "Select 'Rock', 'Paper' or 'Scissors'."
  # end

end
