require 'game'

describe Game do
  
  let(:game) {described_class.new("Player")}
  it 'initailizes with a player' do
    expect(game).to respond_to :player
  end
end