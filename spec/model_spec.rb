require 'model'

describe Match do
  let(:player1) { double :player, choice: 'scissors', name: 'Aloysius', wins: true }
  let(:player2) { double :player, choice: 'rock', name: 'Sebastian', wins: true }
  subject { described_class.new(player1, player2) }
  it 'returns the name of the winner' do
    expect(subject.winner).to eq 'Sebastian'
  end
end
