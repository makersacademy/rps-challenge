require './models/game.rb'

describe Game do
  subject(:game) { described_class.new(options) }
  let(:options) { {"player_name" => "Lee", "player_move" => :rock, "ai_move" => :scissors} }

  #describe '#player_name' do
  #  it 'returns player name' do
   #   expect(game.player_name).to eq 'Lee'
   # end
  #end
end