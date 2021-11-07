require_relative '../../models/game'

describe Game do
  subject(:game) { Game.new }
  let(:player1)  {double :player }
  context 'start' do
    it 'registers player\'s name' do
      expect(game).to respond_to(:player1)
    end
  end
end