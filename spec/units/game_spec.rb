require 'game'

describe Game do
  let(:player1){double :player1, :name => "Jason"}
  let(:player2){double :player2, :name => "Douglas"}
  let!(:game){described_class.create(player1, player2)}

  describe '.create' do
    it 'initialize a new Game object storing it inside a class instance variable' do
      expect{described_class.create(player1, player2)}.not_to raise_error
    end
  end

  describe '.instance' do
    it 'retrieves the stored Game object' do
      expect(described_class.instance).to eq game
    end
  end

  describe '#players' do
    it 'stores an array of players' do
      expect(game.players[0]).to eq player1
    end
  end

  describe '#player1' do
    it 'returns a player obj' do
      expect(game.player1.name).to eq "Jason"
    end
  end

  describe '#player2' do
    it 'returns a player obj' do
      expect(game.player2.name).to eq "Douglas"
    end
  end

  describe '#change_turn' do
    it 'change the value in #turn: 0 player1, 1 player2' do
      expect{game.change_turn}.not_to raise_error
    end
    it 'raises an exception when both players have played' do
      game.change_turn
      expect{game.change_turn}.to raise_error('Both players have played')
    end
   end

  describe '#turn' do
    it 'stores 0 if is player1 on, 1 if is player 2' do
      game.change_turn
      expect(game.turn).to eq 1
    end
  end

  describe '#winner' do
    context "Rock beats Scissors & Lizard" do
        it 'returns who picked rock' do
          allow(player1).to receive(:pick) { :rock }
          allow(player2).to receive(:pick) { :scissors }
          expect(game.winner).to eq player1.name
          allow(player2).to receive(:pick) { :rock }
          allow(player1).to receive(:pick) { :scissors }
          expect(game.winner).to eq player2.name
          allow(player1).to receive(:pick) { :rock }
          allow(player2).to receive(:pick) { :lizard }
          expect(game.winner).to eq player1.name
          allow(player2).to receive(:pick) { :rock }
          allow(player1).to receive(:pick) { :lizard }
          expect(game.winner).to eq player2.name
      end
    end
    context "Scissors beats Paper & Lizard" do
        it 'returns who picked rock' do
          allow(player1).to receive(:pick) { :scissors }
          allow(player2).to receive(:pick) { :paper }
          expect(game.winner).to eq player1.name
          allow(player2).to receive(:pick) { :scissors }
          allow(player1).to receive(:pick) { :paper }
          expect(game.winner).to eq player2.name
          allow(player1).to receive(:pick) { :scissors }
          allow(player2).to receive(:pick) { :lizard }
          expect(game.winner).to eq player1.name
          allow(player2).to receive(:pick) { :scissors }
          allow(player1).to receive(:pick) { :lizard }
          expect(game.winner).to eq player2.name
      end
    end
    context "Paper beats Rock & Spock" do
        it 'returns who picked rock' do
          allow(player1).to receive(:pick) { :paper }
          allow(player2).to receive(:pick) { :rock }
          expect(game.winner).to eq player1.name
          allow(player2).to receive(:pick) { :paper }
          allow(player1).to receive(:pick) { :rock }
          expect(game.winner).to eq player2.name
          allow(player1).to receive(:pick) { :paper }
          allow(player2).to receive(:pick) { :spock }
          expect(game.winner).to eq player1.name
          allow(player2).to receive(:pick) { :paper }
          allow(player1).to receive(:pick) { :spock }
          expect(game.winner).to eq player2.name
      end
    end
    context "Spock beats Scissors & Rock" do
        it 'returns who picked rock' do
          allow(player1).to receive(:pick) { :spock }
          allow(player2).to receive(:pick) { :scissors }
          expect(game.winner).to eq player1.name
          allow(player2).to receive(:pick) { :spock }
          allow(player1).to receive(:pick) { :scissors }
          expect(game.winner).to eq player2.name
          allow(player1).to receive(:pick) { :spock }
          allow(player2).to receive(:pick) { :rock }
          expect(game.winner).to eq player1.name
          allow(player2).to receive(:pick) { :spock }
          allow(player1).to receive(:pick) { :rock }
          expect(game.winner).to eq player2.name
      end
    end
    context "Lizard beats Spock & Paper" do
        it 'returns who picked rock' do
          allow(player1).to receive(:pick) { :lizard }
          allow(player2).to receive(:pick) { :spock }
          expect(game.winner).to eq player1.name
          allow(player2).to receive(:pick) { :lizard }
          allow(player1).to receive(:pick) { :spock }
          expect(game.winner).to eq player2.name
          allow(player1).to receive(:pick) { :lizard }
          allow(player2).to receive(:pick) { :paper }
          expect(game.winner).to eq player1.name
          allow(player2).to receive(:pick) { :lizard }
          allow(player1).to receive(:pick) { :paper }
          expect(game.winner).to eq player2.name
      end
    end
    context "Game can tie" do
        it 'returns :tie' do
          allow(player1).to receive(:pick) { :rock }
          allow(player2).to receive(:pick) { :rock }
          expect(game.winner).to eq :tie
          allow(player2).to receive(:pick) { :paper }
          allow(player1).to receive(:pick) { :paper }
          expect(game.winner).to eq :tie
          allow(player1).to receive(:pick) { :scissors }
          allow(player2).to receive(:pick) { :scissors }
          expect(game.winner).to eq :tie
          allow(player2).to receive(:pick) { :spock }
          allow(player1).to receive(:pick) { :spock }
          expect(game.winner).to eq :tie
          allow(player2).to receive(:pick) { :lizard }
          allow(player1).to receive(:pick) { :lizard }
          expect(game.winner).to eq :tie
      end
    end
  end

  describe '#cpu_picker' do
    it 'returns a sign' do
      expect(game.cpu_picker).to eq(:rock)|eq(:paper)|eq(:scissors)|eq(:spock)|eq(:lizard)
    end
  end
end
