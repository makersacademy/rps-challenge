require 'game'

describe Game do

  subject(:game) { described_class.new }

  it 'comes with a set list of weapons' do
    expect(Game::WEAPONS).to eq [:rock, :paper, :scissors]
  end

end
