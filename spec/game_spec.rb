require 'game'

describe Game do
  subject(:game) { described_class.new(:rock, :paper) }

  # it 'gives us the result of the rps battle' do
  #   expect(game.result).to eq true
  # end
end
