require 'game'

describe Game do 

  let(:player) {double :player}

  it 'returns options when asked for them' do
    expect(subject.options).to eq(['Rock', 'Paper', 'Scissors'])
  end

  it 'returns result after game is played' do
    subject.computer_choice == "Paper"
    allow(player).to receive(:choice)
    player.choice("Rock")
    expect(subject.result(player)).to eq("Computer wins")
  end

end