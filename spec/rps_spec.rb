require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player) { double(:player, weapon: :paper) }
  let(:player2) { double(:player, weapon: :rock) }

  it 'creates a new game' do
    Game.start(player, player)
    expect(Game.current_game).not_to be nil
  end

  
end
