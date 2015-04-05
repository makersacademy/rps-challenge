require 'game'
describe Game do
  it 'compares players move against the computers move and returns winner' do
    allow(subject).to receive(:make_move).and_return('Scissors')
    expect(subject.play('Jade', 'Rock')
      ).to eq 'Jade chose: Rock Computer chose: Scissors, Jade wins!'
  end
end
