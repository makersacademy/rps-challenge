require 'game'

describe Game do
  subject(:game) do
    described_class.new(player1_name, player2_name, player_class)
  end
  let(:player_class) { double(:player_class) }
  let(:player1) { double(:player1) }
  let(:player1_name) { double(:player1_name) }
  let(:player2) { double(:player2) }
  let(:player2_name) { double(:player2_name) }
  let(:computer_player) { double(:computer_player) }

  before do
    allow(player_class).to receive(:new).with(player1_name).and_return(player1)
    allow(player1).to receive(:name).and_return(player1_name)
    allow(player_class).to receive(:new).with(player2_name).and_return(player2)
    allow(player2).to receive(:name).and_return(player2_name)
    allow(player_class).to receive(:new)
      .with(described_class::COMPUTER_NAME).and_return(computer_player)
    allow(computer_player).to receive(:set_computer)
    allow(computer_player).to receive(:computer?).and_return(true)
    allow(player1).to receive(:computer?).and_return(false)
    allow(player2).to receive(:computer?).and_return(false)
  end

  describe '.create' do
    context 'when given two names' do
      it "creates an instance of itself with two players" do
        Game.create(player1_name, player2_name, player_class)
        expect(Game.instance.players[0]).to eq player1
        expect(Game.instance.players[1]).to eq player2
        expect(player2).not_to receive(:set_computer)
      end
    end

    context 'when given one name' do
      it "creates an instance of itself with a computer opponent" do
        expect(computer_player).to receive(:set_computer)
        Game.create(player1_name, nil, player_class)
        expect(Game.instance.players[0]).to eq player1
        expect(Game.instance.players[1]).to eq computer_player
      end
    end
  end

  describe '#player1' do
    it "returns player1" do
      expect(game.players[0]).to eq player1
    end
  end

  describe '#player2' do
    it "returns player2" do
      expect(game.players[1]).to eq player2
    end
  end

  describe '#turn' do
    it 'is set to 0 by default' do
      expect(game.turn).to eq 0
    end
  end

  describe '#next_turn' do
    it 'increases #turn' do
      game.next_turn
      expect { game.next_turn }.to change { game.turn }.by 1
    end
  end

  describe '#current_player' do
    context "player 1's go" do
      it 'returns player 1' do
        expect(game.current_player).to eq player1
      end
    end

    context "player 2's go" do
      it 'returns player 2' do
        game.next_turn
        expect(game.current_player).to eq player2
      end
    end
  end

  describe '#other_player' do
    context "player 1's go" do
      it 'returns player 2' do
        expect(game.other_player).to eq player2
      end
    end

    context "player 2's go" do
      it 'returns player 1' do
        game.next_turn
        expect(game.other_player).to eq player1
      end
    end
  end

  describe '#warning' do
    context 'player 2 is computerised' do
      it 'returns an empty string' do
        Game.create(player1_name, nil, player_class)
        expect(Game.instance.warning).to eq ""
      end
    end

    context 'player 2 is a human' do
      before do
        game = Game.create(player1_name, player2_name)
      end

      context "it's player 1's go" do
        it 'tells player 2 not to look' do
          expect(game.warning).to eq "#{player2_name}, look away"
        end
      end
      
      context "it's player 2's go" do
        it 'tells player 1 not to look' do
          game.next_turn
          expect(game.warning).to eq "#{player1_name}, look away"
        end
      end
    end
  end

  describe '#result' do
    context 'player 1 chooses rock' do
      before do
        allow(player1).to receive('choice').and_return(0)
      end

      context 'player 2 chooses rock' do
        it 'draw' do
          allow(player2).to receive('choice').and_return(0)
          expect(game.result).to eq "It's a draw"
        end
      end
      context 'player 2 chooses paper' do
        it 'p2 wins' do
          allow(player2).to receive('choice').and_return(1)
          expect(game.result).to eq "#{player2_name} wins"
        end
      end
      context 'player 2 chooses scissors' do
        it 'p1 wins' do
          allow(player2).to receive('choice').and_return(2)
          expect(game.result).to eq "#{player1_name} wins"
        end
      end
    end

    context 'player 1 chooses paper' do
      before do
        allow(player1).to receive('choice').and_return(1)
      end

      context 'player 2 chooses rock' do
        it 'p1 wins' do
          allow(player2).to receive('choice').and_return(0)
          expect(game.result).to eq "#{player1_name} wins"
        end
      end
      context 'player 2 chooses paper' do
        it 'draw' do
          allow(player2).to receive('choice').and_return(1)
          expect(game.result).to eq "It's a draw"
        end
      end
      context 'player 2 chooses scissors' do
        it 'p2 wins' do
          allow(player2).to receive('choice').and_return(2)
          expect(game.result).to eq "#{player2_name} wins"
        end
      end
    end

    context 'player 1 chooses scissors' do
      before do
        allow(player1).to receive('choice').and_return(2)
      end

      context 'player 2 chooses rock' do
        it 'p2 wins' do
          allow(player2).to receive('choice').and_return(0)
          expect(game.result).to eq "#{player2_name} wins"
        end
      end
      context 'player 2 chooses paper' do
        it 'p1 wins' do
          allow(player2).to receive('choice').and_return(1)
          expect(game.result).to eq "#{player1_name} wins"
        end
      end
      context 'player 2 chooses scissors' do
        it 'draw' do
          allow(player2).to receive('choice').and_return(2)
          expect(game.result).to eq "It's a draw"
        end
      end
    end
  end

end
