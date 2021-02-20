require 'computer_player'

describe Computer_Player do

  it 'plays either rock, paper, or scissors' do
    allow(subject).to receive(:play).and_return('rock')
    expect(subject.play).to eq('rock')
  end

end
