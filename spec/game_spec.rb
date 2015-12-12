require 'game'

describe Game do
  subject(:game) {described_class.new(players_choice)}
  let(:players_choice) {"ROCK!"}
  let(:player_chooses_paper) {described_class.new("PAPER!")}
  let(:player_chooses_scissors) {described_class.new("SCISSORS!")}

  describe '#initialie' do

    it 'takes one argument' do
      expect{ Game.new(:player_choice) }.not_to raise_error
    end

    it 'converts player_choice to symbol' do
      expect(game.player_choice).to eq :rock
    end

    it 'creates a computer choice' do
      expect([:rock, :paper, :scissors]).to include game.computer_choice
    end
  end

  describe '#winner' do

    context 'player choses rock' do

      it 'computer choses rock' do
        allow(Kernel).to receive(:rand).and_return(1)
        expect(game.winner).to eq :draw
      end

      it 'computer choses paper' do
        allow(Kernel).to receive(:rand).and_return(4)
        expect(game.winner).to eq :lose
      end

      it 'computer choses scissors' do
        allow(Kernel).to receive(:rand).and_return(7)
        expect(game.winner).to eq :win
      end

    end

    context 'player choses paper' do

      it 'computer choses rock' do
        allow(Kernel).to receive(:rand).and_return(1)
        expect(player_chooses_paper.winner).to eq :win
      end

      it 'computer choses paper' do
        allow(Kernel).to receive(:rand).and_return(4)
        expect(player_chooses_paper.winner).to eq :draw
      end

      it 'computer choses scissors' do
        allow(Kernel).to receive(:rand).and_return(7)
        expect(player_chooses_paper.winner).to eq :lose
      end

    end

    context 'player choses scissors' do

      it 'computer choses rock' do
        allow(Kernel).to receive(:rand).and_return(1)
        expect(player_chooses_scissors.winner).to eq :lose
      end

      it 'computer choses paper' do
        allow(Kernel).to receive(:rand).and_return(4)
        expect(player_chooses_scissors.winner).to eq :win
      end

      it 'computer choses scissors' do
        allow(Kernel).to receive(:rand).and_return(7)
        expect(player_chooses_scissors.winner).to eq :draw
      end

    end
  end

end
