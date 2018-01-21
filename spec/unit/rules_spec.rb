require 'rules'
describe Rules do
  let(:player1)          { double :player_1, name: :Bob }
  let(:player2)          { double :player_2, name: :Ted }
  # let(:name)              { 'Ben' }
  subject(:rules) { described_class.new }

  it "should have a array with all of the goes in" do
    expect(subject.valid_goes).to eq [:rock, :paper, :scissors]
  end

  it "should have a hash with the rules in" do
    expect(subject.rules[:rock]).to eq :scissors
    expect(subject.rules[:scissors]).to eq :paper
    expect(subject.rules[:paper]).to eq :rock
  end

  it "should return player1 as the  winner" do
    allow(player1).to receive(:go).and_return(:rock)
    allow(player2).to receive(:go).and_return(:scissors)
    expect(subject.winner(player1, player2)).to eq :Bob
  end

  it "should return player2 as the winner" do
    allow(player1).to receive(:go).and_return(:rock)
    allow(player2).to receive(:go).and_return(:paper)
    expect(subject.winner(player1, player2)).to eq :Ted
  end

  it "should return draw if goes match" do
    allow(player1).to receive(:go).and_return(:rock)
    allow(player2).to receive(:go).and_return(:rock)
    expect(subject.winner(player1, player2)).to eq :Draw
  end

  it "should randomly return a valid go" do
    random_go = subject.random_go
    expect(subject.valid_goes).to include(random_go)
  end

end
