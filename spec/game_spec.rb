require 'game'

describe Game do

  subject(:game) { described_class.new }

  it 'comes with a set list of weapons' do
    expect(Game::WEAPONS).to eq [:rock, :paper, :scissors]
  end

  it 'has a rules table' do
    expect(Game::RULES).to eq { { scissors: :paper, paper: :rock, rock: :scissors } }
  end
end
