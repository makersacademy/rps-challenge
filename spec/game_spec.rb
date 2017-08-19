require 'game'

describe Game do
  let(:player1){ double :player }
  let(:game){described_class.new(player1)}
  it 'generates a number randomly between 0 and 2' do
    expect(game.random_number).to be_between(0,2)
  end
end
