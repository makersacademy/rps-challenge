require 'match'

describe Match do
  subject { described_class.new('rock') }

  it 'starts with a move for player_1' do
    expect(subject.player_1_move).to eq 'rock' 
  end

  it 'gives a random move to player_1' do
    allow(subject).to receive(:player_2_move).and_return('paper')
    expect(subject.player_2_move).to eq('paper')
  end

end