require 'game'

describe Game do

  name_one = "Joe"
  name_two = "Alice"
  let(:player_1) {double :player_1, name: name_one, score: 0}
  let(:player_2) {double :player_2, name: name_two, score: 0}

  before(:all) do
    srand(67809)
  end

  subject(:game) {described_class.new(player_1, player_2)}
  let(:game_singleton) {described_class.create(player_1, player_2)}

    specify '.instance always refers to the same instance' do
      expect(game_singleton).to be_a_kind_of(described_class)
      expect(game_singleton).to eq described_class.instance
    end


   it 'has an array of players containing both players' do
    expect(game.players).to include(player_1)
    expect(game.players).to include(player_2)
   end

   it 'returns the first player' do
    expect(game.player_1).to eq player_1
   end

   it 'returns the second player' do
    expect(game.player_2).to eq player_2
   end

   it 'can change the current player' do
     expect(game).to respond_to(:change_player)
   end

   it 'change_player changes the current player' do
     expect{game.change_player}.to change{game.current_player}.to player_1
     expect{game.change_player}.to change{game.current_player}.to player_2
   end

   it 'gets the opponent of the current player' do
     expect(game.opponent_of(player_1)).to eq player_2
   end

   it 'can get a result from its evaluation engine' do
     allow(player_1).to receive(:choice).and_return("Paper")
     allow(player_2).to receive(:choice).and_return("Rock")
     expect(game.get_result).to eq 1
   end

end
