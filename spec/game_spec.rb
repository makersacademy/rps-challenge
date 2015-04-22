require 'game'

describe Game do
  let(:game) { described_class.new }

  context 'Adding players'

  it 'can add a player' do
    expect(game.add_player1("Sammy")).to eq ["Sammy"]
  end
end