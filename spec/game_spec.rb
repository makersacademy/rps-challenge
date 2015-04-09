require 'game'
describe Game do
  before(:each) do
    allow(subject).to receive(:make_move).and_return('Scissors')
  end
  it 'compares players move against the computers move and returns winner' do
    expect(subject.play('Jade', 'Rock')
          ).to eq 'Jade chose: Rock Computer chose: Scissors, Jade wins!'
  end
  it 'returns draw if both play the same move' do
    expect(subject.play('Jade', 'Scissors')
          ).to eq 'Jade chose: Scissors Computer chose: Scissors, Its a draw!'
  end
end
