require 'card'

describe Card do
  subject(:card) { described_class.new(2) }
  subject(:random_card) { described_class.new }

  it 'creates random card' do
    expect(random_card.idx).to eq Card::RANDOM_INDEX
  end

  it 'creates players card' do
    expect(card).to be_an_instance_of Card
    expect(card.idx).to eq 2

  end
end
