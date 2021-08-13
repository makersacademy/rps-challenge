require 'game'

describe Game do
  let(:p1) { double Player, name: 'Alice' }
  let(:p2) { double Player, name: 'Bob' }
  let(:game) { Game.new(p1, p2) }

  it 'can be created with two players' do
    expect(game).to have_attributes(:player1 => p1, :player2 => p2)
  end

  it 'does not have a winner to start with' do
    expect(game).to have_attributes(:winner => nil)
  end

  describe '#move' do
    it "sets both player's moves" do
      skip "TODO"
    end

    it "sets player 1 as the winner" do
      skip "TODO"
    end

    it "sets player 2 is the winner" do
      skip "TODO"
    end

    it "sets a draw" do
      skip "TODO"
    end
  end
end
