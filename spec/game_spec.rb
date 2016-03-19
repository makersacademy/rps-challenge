RSpec.configure do |c|
  c.filter_run_excluding :broken => true
end

require 'game'

describe Game do
  let(:player){double :Player, name: "default", move: nil, win!:nil}
  let(:player1){double :Player, name: "Me", move: nil, win!:nil}
  let(:player2){double :Player, name: "Computer", move: nil, win!:nil}

  let(:player_class) { double :player_class, new: player}
  let(:game_class) { described_class }
  subject(:game){ described_class.new(player1: player1,player2: player2) }
  let(:player){ double :Player }
  let(:damage){Player::DAMAGE}

  context 'class methods' do
    describe '#self.create' do
      it 'creates a new instance of game' do
        expect(player_class).to receive :new
        game_class.create(player1_name: player1.name, player2_name: player2.name, player_class: player_class)
      end
    end

    describe '#self.instance' do
      it 'returns a game instance' do
        game_class.create(player1_name: player1.name, player2_name: player2.name, player_class: player_class)
        expect(game_class.instance).to be_an_instance_of(game_class)
      end
    end

    describe '#self.reset' do
      it "clears the class instance variable 'instance'" do
        game_class.reset
        expect(game_class.instance).to be_nil
      end
    end
  end

  context 'instance methods' do
    before :each do
      game_class.create(player1_name: player1.name,  player2_name: player2.name,player_class: player_class)
    end

    describe "#initialize" do
      it { expect(game_class.instance.player1).to eq player }
      it { expect(game_class.instance.player2).to eq player }
    end

    describe '#winner' do

      after do
        game_class.instance.winner(player1:player1, player2:player2)
      end

      context 'player 1 wins' do
        before do
          allow(player1).to receive(:move){:paper}
          allow(player2).to receive(:move){:rock}
        end

        it { expect(player1).to receive(:win!) }
        it { expect(player2).not_to receive(:win!) }
      end

      context 'player 2 wins' do
        before do
          allow(player1).to receive(:move){:scissors}
          allow(player2).to receive(:move){:rock}
        end

        it { expect(player1).not_to receive(:win!) }
        it { expect(player2).to receive(:win!) }
      end

      context 'draw' do
        before do
          allow(player1).to receive(:move){:rock}
          allow(player2).to receive(:move){:rock}
        end

        it { expect(player1).not_to receive(:win!) }
        it { expect(player2).not_to receive(:win!) }
      end

    end
  end
end
