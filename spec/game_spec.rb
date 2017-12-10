require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double(:my_player1, choice: 'Rock') }
  let(:player2) { double(:my_player2) }
  before { srand(2) }

  it 'can make a random choice for a computer opponent' do
    expect(game.computer_choice).to eq 'Rock'
  end

end
