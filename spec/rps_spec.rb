require 'rps'

describe RPS do
  it 'gets player move' do
    game = RPS.new('Rock')
    expect(game.move).to eq 'Rock'
  end

  it 'generates a move for the computer' do
    allow(Kernel).to receive(:rand).and_return(1)
    game = RPS.new('Rock')
    expect(game.computermove).to eq 'Scissors'
  end

  describe '#winner' do
    it 'returns player win when they select rock vs computers scissors' do
      game = RPS.new('Rock')
      allow(game).to receive(:computermove).and_return('Scissors')
      expect(game.winner).to eq 'Win'
    end

    it 'returns player loss when they select rock vs computer paper' do
      game = RPS.new('Rock')
      allow(game).to receive(:computermove).and_return('Paper')
      expect(game.winner).to eq 'Lose'
    end

    it 'returns a draw when they select rock vs computer rock' do
      game = RPS.new('Rock')
      allow(game).to receive(:computermove).and_return('Rock')
      expect(game.winner).to eq 'Draw'
    end
  end

end
