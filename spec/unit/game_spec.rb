require './models/game.rb'

describe 'When new game is created with player name,' do
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

  def self.test_game_result(
    expected_result:, 
    player_move:,
    computer_move:)
    describe "When player plays game, choosing #{player_move}," do

      describe "and computer selects #{computer_move}," do

        it "should create new result instance, passing it #{expected_result}" do
          allow(computer_double).to receive(:move).and_return(computer_move)

          @game.play(player_move)

          expect(result_class_double).to have_received(:new).with(expected_result)
        end
      end
    end
  end

  test_game_result(expected_result: :player_win, player_move: 'rock', computer_move: 'scissors')

  test_game_result(expected_result: :player_loss, player_move: 'paper', computer_move: 'scissors')

  test_game_result(expected_result: :player_draw, player_move: 'scissors', computer_move: 'scissors')

  test_game_result(expected_result: :player_win, player_move: 'scissors', computer_move: 'paper')

  test_game_result(expected_result: :player_loss, player_move: 'rock', computer_move: 'paper')

  test_game_result(expected_result: :player_draw, player_move: 'paper', computer_move: 'paper')

  test_game_result(expected_result: :player_win, player_move: 'paper', computer_move: 'rock')

  test_game_result(expected_result: :player_loss, player_move: 'scissors', computer_move: 'rock')

  test_game_result(expected_result: :player_draw, player_move: 'rock', computer_move: 'rock')
end
