require './models/game.rb'

describe 'When new game is created with player name, ' do
  let(:player_name) { 'Simon' }
  let(:computer_double) { double(:computer) }
  let(:result_class_double) { double(:result_class, new: nil) }

  # using before each instead of let to create game
  # as had issues with execution order
  before(:each) do
    @game = Game.create(
      player_name: player_name, 
      computer: computer_double,
      result_class: result_class_double
    )
  end

  it 'should store player name' do
    expect(@game.player_name).to eq(player_name)
  end

  it 'should store new game instance as class instance variable' do
    expect(Game.current_game).to eq(@game)
  end

  describe 'when player selects to play' do
    def self.test_game_logic(expected_player_result:, player_selection:)
      it "should return #{expected_player_result} if player selected #{player_selection}" do
        @game.play(player_selection)

        expect(result_class_double).to have_received(:new).with(expected_player_result)
      end
    end

    describe 'and computer selects scissors,' do
      before(:each) do
        allow(computer_double).to receive(:move).and_return('scissors')
      end

      test_game_logic(expected_player_result: :player_win, player_selection: 'rock')

      test_game_logic(expected_player_result: :player_loss, player_selection: 'paper')

      test_game_logic(expected_player_result: :player_draw, player_selection: 'scissors')
    end

    describe 'and computer selects paper,' do
      before(:each) do
        allow(computer_double).to receive(:move).and_return('paper')
      end

      test_game_logic(expected_player_result: :player_win, player_selection: 'scissors')

      test_game_logic(expected_player_result: :player_loss, player_selection: 'rock')

      test_game_logic(expected_player_result: :player_draw, player_selection: 'paper')
    end

    describe 'and computer selects rock,' do
      before(:each) do
        allow(computer_double).to receive(:move).and_return('rock')
      end

      test_game_logic(expected_player_result: :player_win, player_selection: 'paper')

      test_game_logic(expected_player_result: :player_loss, player_selection: 'scissors')

      test_game_logic(expected_player_result: :player_draw, player_selection: 'rock')
    end
  end
end
