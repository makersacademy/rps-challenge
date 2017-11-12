require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player, choice: 'Rock' }
  let(:computer) { double :computer, choice: 'Rock' }

  it '#result return draw if both choices are the same' do
    expect(game.result).to eq('Draw')
  end
end
