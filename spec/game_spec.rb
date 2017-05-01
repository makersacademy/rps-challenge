require './lib/game'

describe Game do
  let(:player_1) {double :player}
  let(:player_2) {double :player}


  it 'creates a game instance with 2 players as args' do
    game = Game.new(player_1, player_2)
    expect(game.players).to include(player_1).and include(player_2)
  end

  it 'If 1 arg is supplied upon instantiation the player 2 default is \'Machine\'' do
    game = Game.new(player_1)
    expect(game.players[1].name ).to include('Machine')
  end

  describe '#machine' do
    it "returns rock, paper or scissors when called" do
      game = Game.new(player_1)
      expect(game.machine_choice).to eq('Rock').or eq('Paper').or eq('Scissors')
    end
  end

  describe '#round' do
    it "Expects round to return 1 for the 1st round of a game" do
      game = Game.new(player_1)
      expect(game.round).to eq 1
    end
  end

  describe '#battle' do
    it 'compares the choice of a battle from the 2 players returns a winner' do
      expect(player_1).to receive(:name) {'Player 1'}
      player_1.name #{'Player 1'}
      game = Game.new(player_1)
      game.get_choices("Rock")
      expect(game.battle).to eq('Player 1 wins Round 1!').or eq('Machine wins Round 1!').or eq("Draw!")

    end
  end


end
