require 'go_manager'
describe GoManager do
  let(:player1)          { double :player_1 }
  let(:player2)          { double :player_2 }
  # let(:name)              { 'Ben' }
  subject(:go_manager) { described_class.new }

  it "should have a constant array with all of the goes in" do
    expect(described_class::VALID_GOES).to eq [:rock, :paper, :scissors]
  end

  it "should have a hash with the rules in" do
    expect(subject.rules[:rock]).to eq :scissors
    expect(subject.rules[:scissors]).to eq :paper
    expect(subject.rules[:paper]).to eq :rock
  end

  it "should return player1 as the  winner" do
    allow(player1).to receive(:go).and_return(:rock)
    allow(player2).to receive(:go).and_return(:scissors)
    expect(subject.winner(player1, player2)).to eq player1
  end

  it "should return player2 as the winner" do
    allow(player1).to receive(:go).and_return(:rock)
    allow(player2).to receive(:go).and_return(:paper)
    expect(subject.winner(player1, player2)).to eq player2
  end

  it "should raise an error for invalid input" do
    allow(player1).to receive(:go).and_return(:banana)
    allow(player2).to receive(:go).and_return(:paper)
    expect { subject.winner(player1, player2) }.to raise_error("invalid game")
  end

  # describe '#player_1' do
  #   it 'retrieves the first player' do
  #     expect(game.player_1).to eq player_1
  #   end
  # end
  #
  # describe '#player_2' do
  #   it 'retrieves the second player' do
  #     expect(game.player_2).to eq player_2
  #   end
  # end
  #
  # describe '#switch_turns' do
  #   it "Should switch players" do
  #     game.switch_turns
  #     expect(game.current_turn).to eq player_2
  #   end
  #
  # end
end
