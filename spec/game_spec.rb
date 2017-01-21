require 'game'

describe Game do

  let(:kat)      { spy("Player") }
  let(:computer) { spy("Computer") }

  subject(:game) { described_class.new(kat, computer) }

  it 'should have two players' do
    expect(game).to have_attributes(player: kat, computer: computer)
  end

end
