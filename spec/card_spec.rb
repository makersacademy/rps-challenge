require 'card'

describe Card do
  subject(:card) { described_class.new(2) }

  it 'creates players card' do
    expect(card).to be_an_instance_of Card
    expect(card.idx).to eq 2

  end
end
