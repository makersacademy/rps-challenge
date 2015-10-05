require 'game'

describe Game do

  let(:player) {double :player, object: :scissors }
  let(:player2) {double :player, object: :rock }
  let(:player3) {double :player, object: :paper }
  let(:computer) {double :computer}

  before :each do
    allow(computer).to receive(:auto).and_return(:scissors)
  end

  it 'should declare if there is a draw' do
    expect(subject.play(player, computer)).to eq("That's a draw!")
  end

  it 'should declare player is the looser' do
    allow(computer).to receive(:auto).and_return(:rock)
    expect(subject.play(player, computer)).to eq("You lose!")
  end

  it 'should declare player is the winner' do
    allow(computer).to receive(:auto).and_return(:paper)
    expect(subject.play(player, computer)).to eq("You are the winner!")
  end

  it 'should declare player 1 is the winner' do
    expect(subject.play2(player, player3)).to eq("Player 1 wins!")
  end

  it 'should declare player 2 is the winner' do
    expect(subject.play2(player, player2)).to eq("Player 2 wins!")
  end
end
