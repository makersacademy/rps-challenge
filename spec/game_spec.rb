require 'game'

describe Game do

  it "Bill picks Rock, Ted picks Paper; Ted wins the round" do
    player_1 = double('player')
    player_2 = double('player')
    allow(player_1).to receive(:name) { 'Bill' }
    allow(player_2).to receive(:name) { 'Ted' }
    subject = described_class.new(player_1, player_2)
    subject.player_1_chooses("Rock")
    subject.player_2_chooses
    subject.evaluate_round
    expect(subject.result).to eq "Ted wins!"
  end

  it "Bill picks Rock, Ted picks Rock; Drawn round" do
    player_1 = double('player')
    player_2 = double('player')
    allow(player_1).to receive(:name) { 'Bill' }
    allow(player_2).to receive(:name) { 'Ted' }
    subject = described_class.new(player_1, player_2)
    subject.player_1_chooses("Rock")
    subject.player_2_chooses
    subject.evaluate_round
    expect(subject.result).to eq "Round is a draw!"
  end

  it "Bill picks Paper, Ted picks Rock; Bill wins the round" do
    player_1 = double('player')
    player_2 = double('player')
    allow(player_1).to receive(:name) { 'Bill' }
    allow(player_2).to receive(:name) { 'Ted' }
    subject = described_class.new(player_1, player_2)
    subject.player_1_chooses("Paper")
    subject.player_2_chooses
    subject.evaluate_round
    expect(subject.result).to eq "Bill wins!"
  end

end
