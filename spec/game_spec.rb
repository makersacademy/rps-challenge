RSpec.configure do |c|
  c.filter_run_excluding :broken => true
end

require 'game'

describe Game do
  let(:player){double :Player, name: "default", move: nil, win!:nil, not_win!:nil, restart!:nil, turn_finished!: nil, played?: nil}
  let(:player1){double :Player, name: "Me", move: nil, win!:nil, not_win!:nil, restart!:nil, turn_finished!: nil, played?: nil}
  let(:player2){double :Player, name: "You", move: nil, win!:nil, not_win!:nil, restart!:nil, turn_finished!: nil, played?: nil}

  let(:player_class) { double :player_class, new: player}
  let(:player){ double :Player }
  let(:ai_class) { double :ai_class, new: ai}
  let(:ai){ double :Ai }
  let(:game_class) { described_class }
  subject(:game){ described_class.new(player1: player1,player2: player2) }
  let(:damage){Player::DAMAGE}

  context 'class methods' do
    # before do
    #   game_class.
    # end

    describe '#self.create_ai' do
      it 'creates a new instance of game with player and ai' do
        expect(player_class).to receive :new
        game_class.create_ai(player1_name: player1.name, player_class: player_class, ai_class:ai_class)
      end
    end

    describe '#self.create' do
      it 'creates a new instance of game with one player' do
        expect(player_class).to receive :new
        game_class.create(player1_name: player1.name, player_class: player_class)
      end
    end

    describe '#self.instance' do
      it 'returns a game instance' do
        game_class.create_ai(player1_name: player1.name, player_class: player_class, ai_class:ai_class)
        expect(game_class.instance).to be_an_instance_of(game_class)
      end
    end

    describe '#self.player_class' do
      it 'returns player_class' do
        game_class.create_ai(player1_name: player1.name, player_class: player_class, ai_class:ai_class)
        expect(game_class.player_class).to eq(player_class)
      end
    end
    describe '#self.number_of_players' do
      it 'returns 1 for one-player game' do
        game_class.create_ai(player1_name: player1.name, player_class: player_class, ai_class:ai_class)
        expect(game_class.number_of_players).to eq(1)
      end

      it 'returns 2 for two-player game' do
        game_class.create(player1_name: player1.name, player_class: player_class)
        expect(game_class.number_of_players).to eq(2)
      end

    end

    describe '#self.reset' do
      before do
        game_class.reset
      end
      it { expect(game_class.instance).to be_nil }
      it { expect(game_class.number_of_players).to be_nil }
      it { expect(game_class.player_class).to be_nil }
    end
  end

  context 'initialize ai' do
    before :each do
      game_class.reset
      game_class.create_ai(player1_name: player1.name, player_class: player_class, ai_class:ai_class)
    end
    describe "#initialize" do
      it { expect(game_class.instance.player1).to eq player }
      it { expect(game_class.instance.player2).to eq ai }
      it { expect(game_class.instance).not_to be_in_progress}
    end
  end

  context 'initialize with one player' do
    before :each do
      game_class.reset
      game_class.create(player1_name: player1.name, player_class: player_class)
    end

    describe "#initialize" do
      it { expect(game_class.instance.player1).to eq player }
      it { expect(game_class.instance.player2).to eq nil }
      it { expect(game_class.instance).not_to be_in_progress}
    end

    describe '#add_player' do
      it 'adds a second player to the game' do
        game_class.instance.add_player(player_name:player2.name)
        expect(game_class.instance.player2).to eq player
      end
    end
  end


  context 'instance methods' do
    describe "#in_progress" do
      before do
        game.in_progress!
      end
      it {expect(game).to be_in_progress}
    end

    describe '#find_opponent' do
      it { expect(game.find_opponent(player1.name)).to eq player2 }
      it { expect(game.find_opponent(player2.name)).to eq player1 }
    end

    describe '#find_me' do
      it { expect(game.find_me(player1.name)).to eq player1 }
      it { expect(game.find_me(player2.name)).to eq player2 }
    end

    describe '#restart!' do
      before do
        game.in_progress!
      end

      it { expect{game.restart!}.to change {game.in_progress?}.from(true).to(false)}
      it 'sends restart! to player 1' do
        expect(game.player1).to receive(:restart!)
        game.restart!
      end
      it 'sends restart! to player 2' do
        expect(game.player2).to receive(:restart!)
        game.restart!
      end
    end

    describe '#both_played?' do
      it 'returns true when both players have played' do
        allow(player1).to receive(:played?).and_return(true)
        allow(player2).to receive(:played?).and_return(true)
        expect(game).to be_both_played
      end
      it 'returns false when only one players has played' do
        allow(player1).to receive(:played?).and_return(true)
        allow(player2).to receive(:played?).and_return(false)
        expect(game).not_to be_both_played
      end
      it 'returns false when neither player has played' do
        allow(player1).to receive(:played?).and_return(false)
        allow(player2).to receive(:played?).and_return(false)
        expect(game).not_to be_both_played
      end
    end

    describe '#turn_finished!' do
      after do
        game.turn_finished!
        allow(player1).to receive(:played?).and_return(false)
        allow(player2).to receive(:played?).and_return(false)
      end
      it { expect(game.player1).to receive(:turn_finished!) }
      it { expect(game.player2).to receive(:turn_finished!) }
      it { expect(game.turn_finished?).to eq true }
    end

    describe '#find_winner' do

      after do
        game.find_winner(player1:player1, player2:player2)
      end

      context 'player 1 wins' do
        before do
          allow(player1).to receive(:move){:paper}
          allow(player2).to receive(:move){:rock}
        end

        it { expect(player1).to receive(:win!) }
        it { expect(player1).not_to receive(:not_win!) }
        it { expect(player2).not_to receive(:win!) }
        it { expect(player2).to receive(:not_win!) }
      end

      context 'player 2 wins' do
        before do
          allow(player1).to receive(:move){:scissors}
          allow(player2).to receive(:move){:rock}
        end

        it { expect(player1).not_to receive(:win!) }
        it { expect(player1).to receive(:not_win!) }
        it { expect(player2).to receive(:win!) }
        it { expect(player2).not_to receive(:not_win!) }
      end

      context 'draw' do
        before do
          allow(player1).to receive(:move){:rock}
          allow(player2).to receive(:move){:rock}
        end

        it { expect(player1).not_to receive(:win!) }
        it { expect(player1).to receive(:not_win!) }
        it { expect(player2).not_to receive(:win!) }
        it { expect(player2).to receive(:not_win!) }
      end
    end
  end
end
