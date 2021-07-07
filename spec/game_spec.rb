require 'game'

describe Game do
  subject(:game) {described_class.new(entry)}
  
  describe 'it receives game entry as an argument' do
    expect(game).to receive(:game_entry) 
    #game_entry is the text entered by the player
  end
end