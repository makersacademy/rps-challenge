require 'game'
require 'player'

describe Game do

subject(:game) { described_class.new("Luke")}

describe '#rules' do
  it 'has rules' do
    expect(game).to respond_to(:rules)

  end
end


end
