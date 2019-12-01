require 'game'



describe Game do

  subject(:game) { Game.new(player1, computer) }
  let(:player1) { double(:player, name: "Andrew") }
  let(:computer) { double(:computer, name: "Computer") }
  
  it "should have a player1" do
    expect(subject.player1).to eq(player1)
  end

  it "should have a computer player2" do
    expect(subject.computer).to eq(computer)
  end

  it "should give player1 as winner when selecting rock and computer scissors" do
    allow(player1).to receive(:choice).and_return("Rock")
    allow(computer).to receive(:choice).and_return("Scissors")
    expect(subject.result).to eq(player1.name)
  end

  it "should give computer as and winner when selecting paper and player1 scissors" do
    allow(player1).to receive(:choice).and_return("Rock")
    allow(computer).to receive(:choice).and_return("Paper")
    expect(subject.result).to eq(computer.name)
  end

  it "should give draw when player and computer select rock" do
    allow(player1).to receive(:choice).and_return("Rock")
    allow(computer).to receive(:choice).and_return("Rock")
    expect(subject.result).to eq("Draw")
  end

  

end