require 'game'

describe Game do
  let(:player2) { double :player2 }
  let(:player1) { double :player1 }
  subject { described_class.new(player1, player2) }

  it 'has player1' do
    expect(subject.player1).to eq player1
  end

  it 'has player2' do
    expect(subject.player2).to eq player2
  end

end

