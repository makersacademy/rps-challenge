require 'game'

describe Game do

  let(:player) {double :player}
  let(:computer) {double :computer}

  it 'should declare player is the winner' do
    player = Player.new
    player.choose(:rock)
    computer = Computer.new
    allow(computer).to receive(:auto).and_return(:scissors)
    expect(subject.winner).to eq("You are the winner!")
  end

  it 'should declare player is the looser' do
    player = Player.new
    player.choose(:scissors)
    computer = Computer.new
    allow(computer).to receive(:auto).and_return(:rock)
    expect(subject.looser).to eq("You loose!")
  end

  it 'should declare if there is a draw' do
    player = Player.new
    player.choose(:scissors)
    computer = Computer.new
    allow(computer).to receive(:auto).and_return(:scissors)
    expect(subject.draw).to eq("That's a draw!")
  end

  it 'should declare if there is a draw' do
    player = Player.new
    player.choose(:scissors)
    computer = Computer.new
    allow(computer).to receive(:auto).and_return(:scissors)
    expect(subject.play(player, computer)).to eq("That's a draw!")
  end

  it 'should declare player is the looser' do
    player = Player.new
    player.choose(:scissors)
    computer = Computer.new
    allow(computer).to receive(:auto).and_return(:rock)
    expect(subject.play(player, computer)).to eq("You loose!")
  end

  it 'should declare player is the winner' do
    player = Player.new
    player.choose(:rock)
    computer = Computer.new
    allow(computer).to receive(:auto).and_return(:scissors)
    expect(subject.play(player, computer)).to eq("You are the winner!")
  end

end
