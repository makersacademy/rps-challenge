require 'rps_game'

describe RPSGame do

  subject(:game){ RPSGame.new(player, computer_player)}
  let(:name) { double :name }
  let(:player) { double :player }
  let(:computer_player) { double :computer_player }

  describe "#play" do
    context 'player is the winner' do
      it "should return player's name" do
        allow(player).to receive(:weapon).and_return(:rock)
        allow(computer_player).to receive(:weapon).and_return(:scissors)
        allow(game).to receive(:player_outcome).with(:rock, :scissors).and_return(:WIN)
        allow(player).to receive(:name).and_return(name)
        game.play
        expect(game.winner).to eq player.name
      end
    end

    context 'computer player is the winner' do
      it "should return computer player's name" do
        allow(player).to receive(:weapon).and_return(:scissors)
        allow(computer_player).to receive(:weapon).and_return(:rock)
        allow(game).to receive(:player_outcome).with(:scissors, :rock).and_return(:LOSE)
        allow(computer_player).to receive(:name).and_return(name)
        game.play
        expect(game.winner).to eq computer_player.name
      end
    end
  end

  describe '#player_outcome' do

    context 'player is winner' do

      it "should ensure rock beats scissors" do
        expect(game.player_outcome('Rock','Scissors')).to eq :WIN
      end

      it "should ensure scissors beats paper" do
        expect(game.player_outcome('Scissors', 'Paper')).to eq :WIN
      end

      it "should ensure paper beats rock" do
        expect(game.player_outcome('Paper', 'Rock')).to eq :WIN
      end

    end

    context 'player is loser' do

      it "should ensure scissors is beaten by rock" do
        expect(game.player_outcome('Scissors', 'Rock')).to eq :LOSE
      end

      it "should ensure paper is beaten by scissors" do
        expect(game.player_outcome('Paper', 'Scissors')).to eq :LOSE
      end

      it "should ensure rock is beaten by paper" do
        expect(game.player_outcome('Rock', 'Paper')).to eq :LOSE
      end
    end

    context 'player and computer player draw' do

      it "should ensure rock and rock draws" do
        expect(game.player_outcome('Rock', 'Rock')).to eq :TIE
      end

      it "should ensure paper and paper draws" do
        expect(game.player_outcome('Paper', 'Paper')).to eq :TIE
      end

      it "should ensure scissors and scissors draws" do
        expect(game.player_outcome('Scissors', 'Scissors')).to eq :TIE
      end
    end
  end
end
