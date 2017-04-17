require './lib/game'

describe Game do

  subject { described_class.new('radu') }

  it 'registers name of player' do
    expect(subject.player).to eq 'radu'
  end

  it 'computer chooses a random number' do
    srand(1)
    expect(subject.computer_move).to eq 'paper'
  end

  context 'deciding winner' do
    it 'rock vs scissors' do
      subject.computer_move
      expect(subject.winner('rock', 'scissors')).to eq 'Computer won!'
    end

    it 'rock vs paper' do
      subject.computer_move
      expect(subject.winner('rock', 'paper')).to eq 'You won!'
    end

    it 'paper vs scissors' do
      subject.computer_move
      expect(subject.winner('paper', 'scissors')).to eq 'You won!'
    end

    it 'rock vs rock' do
      subject.computer_move
      expect(subject.winner('rock', 'rock')).to eq 'It\'s a draw!'
    end

    it 'scissors vs scissors' do
      subject.computer_move
      expect(subject.winner('scissors', 'scissors')).to eq 'It\'s a draw!'
    end

    it 'paper vs paper' do
      subject.computer_move
      expect(subject.winner('paper', 'paper')).to eq 'It\'s a draw!'
    end
  end

end
