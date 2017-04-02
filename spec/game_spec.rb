require 'game'

describe Game do
  subject(:game) {described_class.new}

  it 'initializes with weapons' do
    expect(Game::WEAPONS).to eq [:rock, :paper, :scissors]
  end
end
