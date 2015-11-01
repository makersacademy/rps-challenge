require 'Game'

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

  end

end
