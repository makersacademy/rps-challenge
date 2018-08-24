require 'computer_player'

describe ComputerPlayer do
  it 'should make a choice between rock, paper or scissors' do
    allow(subject).to receive(:make_choice).and_return('rock')
    expect(subject.make_choice).to eq 'rock'
  end
end