require 'opponent'
require 'marketeer'

describe Opponent do
  subject(:opponent) { described_class.new }

  it 'returns a random choice: rock, paper or scissors' do
    expect(Marketeer::CHOICES).to include opponent.opponent_choice
  end
end
