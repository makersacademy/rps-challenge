require './models/game.rb'

describe 'When new game is created with player name, ' do
  let(:player_name) { 'Simon' }
  let(:computer_double) { double(:computer) }

  # using before each instead of let to create game
  # as had issues with execution order
  before(:each) do
    @game = Game.create(player_name: player_name, computer: computer_double)
  end

  it 'should store player name' do
    expect(@game.player_name).to eq(player_name)
  end

  it 'should store new game instance as class instance variable' do
    expect(Game.current_game).to eq(@game)
  end

  describe 'when player selects to play' do
    def self.test_game_logic(should_player_win:, player_selection:)
      it "should return #{should_player_win} if player selected #{player_selection}" do
        expect(@game.player_move_wins?(player_selection)).to be should_player_win
      end
    end

    describe 'and computer selects scissors,' do
      before(:each) do
        allow(computer_double).to receive(:move).and_return('scissors')
      end

      test_game_logic(should_player_win: true, player_selection: 'rock')

      test_game_logic(should_player_win: false, player_selection: 'paper')
    end

    describe 'and computer selects paper,' do
      before(:each) do
        allow(computer_double).to receive(:move).and_return('paper')
      end

      test_game_logic(should_player_win: true, player_selection: 'scissors')

      test_game_logic(should_player_win: false, player_selection: 'rock')
    end

    describe 'and computer selects rock,' do
      before(:each) do
        allow(computer_double).to receive(:move).and_return('rock')
      end

      test_game_logic(should_player_win: true, player_selection: 'paper')

      test_game_logic(should_player_win: false, player_selection: 'scissors')
    end
  end
end