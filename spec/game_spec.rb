require 'game'

describe Game do
  subject(:game) { described_class.new(user, computer)}
  let(:user) { double(:user) }
  let(:computer) { double(:computer) }

  it 'returns player1' do
    expect(game.player1).to eq user
  end
end
