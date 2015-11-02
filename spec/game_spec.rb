require './lib/game'

describe Game do

  let(:player1){ double(name: :p1, win_game: nil) }
  let(:player2){ double(name: :p2, win_game: nil) }
  let(:rock){ 'rock' }
  let(:paper){ 'paper' }
  let(:scissors){ 'scissors' }
  let(:spock){ 'spock' }
  let(:lizard){ 'lizard' }

  context "results" do

    context "original game" do
      let(:game){ described_class.new('Original') }

      before do
        game.add_players([player1,player2])
      end

      it "rock v rock = draw" do
        allow(player1).to receive(:move) { game.version[rock] }
        allow(player2).to receive(:move) { game.version[rock] }
        expect(game.result).to eq "It's a draw!"
      end

      it "paper v paper = draw" do
        allow(player1).to receive(:move) { game.version[paper] }
        allow(player2).to receive(:move) { game.version[paper] }
        expect(game.result).to eq "It's a draw!"
      end

      it "scissors v scissors = draw" do
        allow(player1).to receive(:move) { game.version[scissors] }
        allow(player2).to receive(:move) { game.version[scissors] }
        expect(game.result).to eq "It's a draw!"
      end

      it "rock v paper = paper wins" do
        allow(player1).to receive(:move) { game.version[rock] }
        allow(player2).to receive(:move) { game.version[paper] }
        expect(game.result).to eq "#{player2.name} wins!"
      end

      it "rock v scissors = rock wins" do
        allow(player1).to receive(:move) { game.version[rock] }
        allow(player2).to receive(:move) { game.version[scissors] }
        expect(game.result).to eq "#{player1.name} wins!"
      end

      it "paper v scissors = scissors win" do
        allow(player1).to receive(:move) { game.version[paper] }
        allow(player2).to receive(:move) { game.version[scissors] }
        expect(game.result).to eq "#{player2.name} wins!"
      end

    end

    context "advanced game" do
      let(:game){ described_class.new('Advanced') }

      before do
        game.add_players([player1,player2])
      end

      it "rock v rock = draw" do
        allow(player1).to receive(:move) { game.version[rock] }
        allow(player2).to receive(:move) { game.version[rock] }
        expect(game.result).to eq "It's a draw!"
      end

      it "paper v paper = draw" do
        allow(player1).to receive(:move) { game.version[paper] }
        allow(player2).to receive(:move) { game.version[paper] }
        expect(game.result).to eq "It's a draw!"
      end

      it "scissors v scissors = draw" do
        allow(player1).to receive(:move) { game.version[scissors] }
        allow(player2).to receive(:move) { game.version[scissors] }
        expect(game.result).to eq "It's a draw!"
      end

      it "lizard v lizard = draw" do
        allow(player1).to receive(:move) { game.version[lizard] }
        allow(player2).to receive(:move) { game.version[lizard] }
        expect(game.result).to eq "It's a draw!"
      end

      it "spock v spock = draw" do
        allow(player1).to receive(:move) { game.version[spock] }
        allow(player2).to receive(:move) { game.version[spock] }
        expect(game.result).to eq "It's a draw!"
      end

      it "rock v paper = paper wins" do
        allow(player1).to receive(:move) { game.version[rock] }
        allow(player2).to receive(:move) { game.version[paper] }
        expect(game.result).to eq "#{player2.name} wins!"
      end

      it "rock v scissors = rock wins" do
        allow(player1).to receive(:move) { game.version[rock] }
        allow(player2).to receive(:move) { game.version[scissors] }
        expect(game.result).to eq "#{player1.name} wins!"
      end

      it "rock v lizard = rock wins" do
        allow(player1).to receive(:move) { game.version[rock] }
        allow(player2).to receive(:move) { game.version[lizard] }
        expect(game.result).to eq "#{player1.name} wins!"
      end

      it "rock v spock = spock wins" do
        allow(player1).to receive(:move) { game.version[rock] }
        allow(player2).to receive(:move) { game.version[spock] }
        expect(game.result).to eq "#{player2.name} wins!"
      end

      it "paper v scissors = scissors win" do
        allow(player1).to receive(:move) { game.version[paper] }
        allow(player2).to receive(:move) { game.version[scissors] }
        expect(game.result).to eq "#{player2.name} wins!"
      end

      it "paper v lizard = lizard wins" do
        allow(player1).to receive(:move) { game.version[paper] }
        allow(player2).to receive(:move) { game.version[lizard] }
        expect(game.result).to eq "#{player2.name} wins!"
      end

      it "paper v spock = paper wins" do
        allow(player1).to receive(:move) { game.version[paper] }
        allow(player2).to receive(:move) { game.version[spock] }
        expect(game.result).to eq "#{player1.name} wins!"
      end

      it "scissors v lizard = draw" do
        allow(player1).to receive(:move) { game.version[scissors] }
        allow(player2).to receive(:move) { game.version[lizard] }
        expect(game.result).to eq "#{player1.name} wins!"
      end

      it "scissors v spock = draw" do
        allow(player1).to receive(:move) { game.version[scissors] }
        allow(player2).to receive(:move) { game.version[spock] }
        expect(game.result).to eq "#{player2.name} wins!"
      end

      it "lizard v spock = lizard wins" do
        allow(player1).to receive(:move) { game.version[lizard] }
        allow(player2).to receive(:move) { game.version[spock] }
        expect(game.result).to eq "#{player1.name} wins!"
      end

    end

  end

end
