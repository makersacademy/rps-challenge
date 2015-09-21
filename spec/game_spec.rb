require 'game'

describe Game do

  let(:player) {double :player, object: :scissors }
  let(:computer) {double :computer}

  before :each do
    allow(player).to receive(:choose).with(:scissors).and_return :scissors
    allow(computer).to receive(:auto).and_return(:scissors)
  end

  it 'should declare if there is a draw' do
    player.choose(:scissors)
    expect(subject.play(player, computer)).to eq("That's a draw!")
  end

  it 'should declare player is the looser' do
    player.choose(:scissors)
    allow(computer).to receive(:auto).and_return(:rock)
    expect(subject.play(player, computer)).to eq("You lose!")
  end

  it 'should declare player is the winner' do
    player.choose(:scissors)
    allow(computer).to receive(:auto).and_return(:paper)
    expect(subject.play(player, computer)).to eq("You are the winner!")
  end

end
