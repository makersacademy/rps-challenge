require 'game'

describe Game do
  subject(:game) {described_class.new(players_choice)}
  let(:players_choice) {:rock}
  let(:player_chooses_paper) {described_class.new(:paper)}
  let(:player_chooses_scissors) {described_class.new(:scissors)}
  let(:player_chooses_spock) {described_class.new(:spock)}
  let(:player_chooses_lizard) {described_class.new(:lizard)}
  let(:two_player_game) {described_class.new(:rock, :paper)}

  describe '#initialize' do

    it 'sets player 2 choice (for computer) by default' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      expect(game.player2_choice).to eq :rock
    end

    it 'sets player 2 choice if provided' do
      expect(two_player_game.player2_choice).to eq :paper
    end

    it 'converts player_choice to symbol' do
      expect(game.player1_choice).to eq :rock
    end

  end

  describe '#winner' do

    context 'player choses rock' do

      it 'computer choses rock' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
        expect(game.winner).to eq :draw
      end

      it 'computer choses paper' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
        expect(game.winner).to eq :lose
      end

      it 'computer choses scissors' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
        expect(game.winner).to eq :win
      end

      it 'computer choses Spock' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:spock)
        expect(game.winner).to eq :lose
      end

      it 'computer choses lizard' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:lizard)
        expect(game.winner).to eq :win
      end

    end

    context 'player choses paper' do

      it 'computer choses rock' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
        expect(player_chooses_paper.winner).to eq :win
      end

      it 'computer choses paper' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
        expect(player_chooses_paper.winner).to eq :draw
      end

      it 'computer choses scissors' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
        expect(player_chooses_paper.winner).to eq :lose
      end

      it 'computer choses Spock' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:spock)
        expect(player_chooses_paper.winner).to eq :win
      end

      it 'computer choses lizard' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:lizard)
        expect(player_chooses_paper.winner).to eq :lose
      end

    end

    context 'player choses scissors' do

      it 'computer choses rock' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
        expect(player_chooses_scissors.winner).to eq :lose
      end

      it 'computer choses paper' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
        expect(player_chooses_scissors.winner).to eq :win
      end

      it 'computer choses scissors' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
        expect(player_chooses_scissors.winner).to eq :draw
      end

      it 'computer choses Spock' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:spock)
        expect(player_chooses_scissors.winner).to eq :lose
      end

      it 'computer choses lizard' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:lizard)
        expect(player_chooses_scissors.winner).to eq :win
      end

    end

    context 'player choses Spock' do

      it 'computer choses rock' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
        expect(player_chooses_spock.winner).to eq :win
      end

      it 'computer choses paper' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
        expect(player_chooses_spock.winner).to eq :lose
      end

      it 'computer choses scissors' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
        expect(player_chooses_spock.winner).to eq :win
      end

      it 'computer choses Spock' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:spock)
        expect(player_chooses_spock.winner).to eq :draw
      end

      it 'computer choses lizard' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:lizard)
        expect(player_chooses_spock.winner).to eq :lose
      end

    end

    context 'player choses lizard' do

      it 'computer choses rock' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
        expect(player_chooses_lizard.winner).to eq :lose
      end

      it 'computer choses paper' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
        expect(player_chooses_lizard.winner).to eq :win
      end

      it 'computer choses scissors' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
        expect(player_chooses_lizard.winner).to eq :lose
      end

      it 'computer choses Spock' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:spock)
        expect(player_chooses_lizard.winner).to eq :win
      end

      it 'computer choses lizard' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:lizard)
        expect(player_chooses_lizard.winner).to eq :draw
      end


    end
  end

end
