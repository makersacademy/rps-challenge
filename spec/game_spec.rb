RSpec.configure do |c|
  c.filter_run_excluding :broken => true
end

require 'game'

describe Game do
  let(:player1){double :Player, name: "Me"}
  let(:player2){double :Player, name: "Computer"}
  let(:player_class) { double :player_class, new: player1}
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
  end

  context 'instance methods' do
    before :each do
      game_class.create(player1_name: player1.name,  player2_name: player2.name,player_class: player_class)
    end

    describe "#initialize" do
      it { expect(game.player1).to eq player1 }
      it { expect(game.player2).to eq player2 }
    end
  end
end
