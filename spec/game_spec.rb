require 'game'

describe Game do

  let(:kat)      { spy("Player") }
  let(:computer) { spy("Computer") }

  subject(:game) { described_class.new(kat, computer) }

  it 'should have two players' do
    expect(game).to have_attributes(player_one: kat, player_two: computer)
  end

end
