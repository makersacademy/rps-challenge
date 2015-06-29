require "game"

describe Game do

  let(:player_creator) { double :player_creator}
  let(:number_of_players) {double :number_of_players}
  let(:player_class) {double :player}
  let(:comparator) {double :comparator}
  let(:random_move_creator) {double :random_move_creator}
  let(:player) {double :player}
  
  let(:game) do Game.new( player_creator: player_creator, 
                         number_of_players: number_of_players, 
                         player_class: player,
                         comparator: comparator,
                         random_move_creator: random_move_creator)
  end

  describe "#initialize_players" do

    it "initialize the players" do
      expect(player_creator).to receive(:create).with(number_of_players, 
                                                      player_class, 
                                                      comparator, 
                                                      random_move_creator)
      game
    end

  end

end 