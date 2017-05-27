require 'opponent'

describe Opponent do
  subject(:opponent) { described_class.new }

  it 'choses Rock' do
    expect(opponent.choose_hand).to eq 'Rock'
  end
end
