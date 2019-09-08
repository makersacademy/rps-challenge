# frozen_string_literal: true

require './rps_ui'
require './lib/player'
require './lib/repository'

describe 'Acceptance Tests' do
  include Rack::Test::Methods

  def app
    RpsUi
  end

  PLAYER1_NAME = 'player1'
  PLAYER1_ID   = 'id1'
  PLAYER2_NAME = 'player2'
  PLAYER2_ID   = 'id2'

  let(:repository) { AppContext.instance.repository }

  before :each do
    AppContext.create
  end

  def expect_redirect_to(path)
    expect(last_response.redirect?).to be true
    follow_redirect!
    expect(last_request.path).to eq path
  end

  def register_player(player_name = PLAYER1_NAME)
    post '/register', name: player_name
  end

  def post_new_game
    post '/new', game_name: GAME_NAME
  end

  def post_new_ai_game
    post '/new', game_name: GAME_NAME, ai: 'true'
  end

  def join_game
    post '/join', game_name: GAME_NAME
  end

  def delete_session_game
    last_request.session.delete(RpsUi::GAME_KEY)
  end

  describe '/register' do
    before :each do
      allow_any_instance_of(Player).to receive(:id).and_return(PLAYER1_ID)
    end

    it 'redirects to the index if the player name is empty' do
      post '/register'
      expect_redirect_to '/'
    end

    it 'adds a new player to the repository' do
      register_player
      expect(repository.player(PLAYER1_ID)).not_to be_nil
    end

    it 'redirects to lobby with player id' do
      register_player
      expect_redirect_to '/lobby'
      expect(last_request.session['player_id']).to eq PLAYER1_ID
    end
  end

  describe '/new' do
    before :each do
      register_player
    end

    it 'names the game according to user selection' do
      post_new_game
      game = repository.game(GAME_NAME)
      expect(game.name).to eq GAME_NAME
    end

    it 'redirects back to the lobby if the name is empty' do
      post '/new'
      expect_redirect_to '/lobby'
    end

    it 'can start a game with a human opponent' do
      post_new_game

      game = repository.game(GAME_NAME)
      expect(game).not_to be_nil
      expect(game.player1).not_to be_nil
      expect(game.player2).to be_nil
    end

    it 'can start a game with an ai opponent' do
      post_new_ai_game

      game = repository.game(GAME_NAME)
      expect(game).not_to be_nil
      expect(game.player1).not_to be_nil
      expect(game.player2).not_to be_nil
    end

    it 'redirects to /game-already-exists if game name not unique' do
      post_new_game
      post_new_game
      expect_redirect_to('/game-already-exists')
    end

    it 'redirects to /play if ready' do
      post_new_ai_game
      expect_redirect_to '/play'
    end

    it 'redirects to /waiting-for-opponent if not ready' do
      post_new_game
      expect_redirect_to '/waiting-for-opponent'
    end

    it 'sets the game name in the session hash' do
      post_new_game
      expect(last_request.session['game_name']).to eq GAME_NAME
    end
  end

  describe '/join' do
    before :each do
      register_player
      post_new_game
      delete_session_game

      register_player PLAYER2_NAME
    end

    it "redirects to game-not-found if game doesn't exist" do
      post '/join', 'non_existent'
      expect_redirect_to '/game-not-found'
    end

    it 'adds player to requested game' do
      join_game
      game = repository.game(GAME_NAME)
      expect(game.player2).not_to be_nil
    end

    it 'redirects to play' do
      join_game
      expect_redirect_to '/play'
    end

    it 'sets the game name in the session hash' do
      join_game
      expect(last_request.session['game_name']).to eq GAME_NAME
    end
  end

  describe '/play-if-ready' do
    it 'redirects to /waiting-for-opponent if game is not ready' do
      register_player
      post_new_game
      post 'play-if-ready'
      expect_redirect_to('/waiting-for-opponent')
    end

    it 'redirects to /play if game is ready' do
      register_player
      post_new_ai_game
      post 'play-if-ready'
      expect_redirect_to('/play')
    end
  end

  describe 'get routes' do
    def self.it_redirects_to_lobby(from:)
      it "#{from} redirects to lobby if game is nil" do
        get from
        expect_redirect_to '/lobby'
      end
    end

    it '/lobby redirects to / if play name is empty' do
      get '/lobby'
      expect_redirect_to '/'
    end

    it_redirects_to_lobby from: '/play'
    it_redirects_to_lobby from: '/waiting-for-opponent'
    it_redirects_to_lobby from: '/game-already-exists'
    it_redirects_to_lobby from: '/game-over'
    it_redirects_to_lobby from: '/game-not-found'
  end

  describe '/attack' do
    def game
      AppContext.instance.repository.game(GAME_NAME)
    end

    context 'human versus ai' do
      class StupidAiMove < RandomAiMove
        def choose_move(_, _); :scissors; end
      end

      before :each do
        AppContext.instance.ai_instance = StupidAiMove.new
        register_player
        post_new_ai_game
      end

      it 'moves both players' do
        post '/attack', move: 'rock'
        expect(game.winner.name).to eq PLAYER1_NAME
      end

      it 'redirects to /game over' do
        post '/attack', move: 'rock'
        expect_redirect_to '/game-over'
      end
    end

    class SerialIdGenerator
      def initialize
        @last = 0
      end

      def next
        @last += 1
      end
    end

    context 'human versus human' do
      def move_player_1_after_delay(move = :scissors)
        Thread.new do
          sleep 0.1
          repository.add_move(1, move)
        end
      end

      before :each do
        AppContext.instance.id_generator = SerialIdGenerator.new

        register_player
        post_new_game
        delete_session_game

        register_player PLAYER2_NAME
        join_game
      end

      it 'player 2 can beat player 1' do
        move_player_1_after_delay
        post '/attack', move: 'rock'
        expect(game.winner.name).to eq PLAYER2_NAME
      end

      it 'players can draw' do
        move_player_1_after_delay(:rock)
        post '/attack', move: 'rock'
        expect(game.winner).to be_nil
      end

      it 'redirects to /game over' do
        move_player_1_after_delay
        post '/attack', move: 'rock'
        expect_redirect_to '/game-over'
      end
    end
  end

  describe '/return-to-lobby' do
    before :each do
      register_player
    end

    it 'deletes the game key from the session hash' do
      post_new_game
      post '/return-to-lobby'
      expect(last_request.session[RpsUi::GAME_KEY]).to be_nil
    end

    it 'deletes the move from the repository' do
      AppContext.instance.id_generator = SerialIdGenerator.new
      register_player
      post_new_ai_game
      post '/attack', move: 'rock'
      post '/return-to-lobby'

      expect(repository.move(1)).to be_nil
    end

    it 'deletes the game from the repository' do
      post_new_game
      post '/return-to-lobby'
      expect(repository.all_games).to be_empty
    end

    it 'does not try to delete a nil game' do
      expect { post '/return-to-lobby' }.not_to raise_error
    end

    it 'redirects to the lobby' do
      post '/return-to-lobby'
      expect_redirect_to '/lobby'
    end
  end
end

