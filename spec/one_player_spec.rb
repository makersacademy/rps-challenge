require 'one_player'

describe One_player do

  subject(:player) { described_class.new('rock')}

  it 'initializes game with a choice' do
    expect(player.choice).to eq 'rock'
  end

  it 'returns true if player wins' do
    allow(Kernel).to receive(:rand).and_return(22)
    expect(player.win?).to eq true
  end

  describe '#match?' do
    it 'returns true if computer_choice matches player_choice' do
      allow(Kernel).to receive(:rand).and_return(5)
      expect(player.match?).to eq true
    end
  end

  describe '#computer_choice' do
    it 'returns either rock, paper, or scissors' do
      allow(Kernel).to receive(:rand).and_return(5)
      expect(player.computer_choice).to eq 'rock'
    end
  end
end
