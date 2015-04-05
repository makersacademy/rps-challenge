require 'game'
describe Game do
  it 'compares players move against the computers move and returns winner' do
    allow(subject).to receive(:computer_move).and_return('Scissors')
    expect(subject.play('Jade', 'Rock', subject.computer_move)
      ).to eq 'Jade wins!'
  end
end
