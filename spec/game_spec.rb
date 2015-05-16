require 'game'
describe Game do
  let(:droid) { double :droid }
  before(:each) do
    allow(droid).to receive(:make_move).and_return('Scissors')
  end
  it 'compares players move against the computers move and returns winner' do
    expect(subject.play('Rock', droid.make_move)
          ).to eq 'Player chose: Rock Computer chose: Scissors, Player wins!'
  end
  it 'returns draw if both play the same move' do
    expect(subject.play('Scissors', droid.make_move)
          ).to eq 'Player chose: Scissors Computer chose: Scissors, Its a draw!'
  end
end
