require 'game'

describe Game do

  let(:player) {double :player}
  let(:computer) {double :computer}

  it 'should take turn using the chosen object by player' do
    # player.choose(:rock)
    # allow(computer).to receive(:auto).and_return(:rock)
    player = Player.new
    player.choose(:rock)
    computer = Computer.new
    allow(computer).to receive(:auto).and_return(:rock)
    expect(subject.play(player, computer)).to eq :draw
  end
end
