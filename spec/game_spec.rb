describe Game do
  let(:player_1) { instance_double("Player 1") }
  let(:player_2) { instance_double("Player 2") }
  subject(:game) { Game.new(player_1, player_2) }

  describe 'players' do
    it 'should return player 1' do
      expect(game.player_1).to eq player_1
    end

    it 'should return player 2' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#switch_turns' do
    it 'should alternate turns' do
      expect { game.switch_turns }.to change { game.turn }.from(player_1).to(player_2)
    end
  end

  describe '#calculate_outcome' do
    context 'rock vs scissors' do
      let(:player_1) { instance_double("Player 1", action: 'rock') }
      let(:player_2) { instance_double("Player 2", action: 'scissors') }
      subject(:game) { Game.new(player_1, player_2) }
      
      it 'should return correct winner' do
        game.calculate_outcome
        expect(game.winner).to eq player_1
      end

      it 'should return "smashes"' do
        game.calculate_outcome
        expect(game.outcome_message).to eq "smashes"
      end
    end

    context 'paper vs rock' do
      let(:player_1) { instance_double("Player 1", action: 'rock') }
      let(:player_2) { instance_double("Player 2", action: 'paper') }
      subject(:game) { Game.new(player_1, player_2) }

      it 'should return correct winner' do
        game.calculate_outcome
        expect(game.winner).to eq player_2
      end

      it 'should return "wraps"' do
        game.calculate_outcome
        expect(game.outcome_message).to eq 'wraps'
      end
    end

    context 'scissors vs paper' do
      let(:player_1) { instance_double("Player 1", action: 'paper') }
      let(:player_2) { instance_double("Player 2", action: 'scissors') }
      subject(:game) { Game.new(player_1, player_2) }

      it 'should return correct winner' do
        game.calculate_outcome
        expect(game.winner).to eq player_2
      end

      it 'should return "cuts"' do
        game.calculate_outcome
        expect(game.outcome_message).to eq 'cuts'
      end
    end

    context 'paper vs paper' do
      let(:player_1) { instance_double("Player 1", action: 'paper') }
      let(:player_2) { instance_double("Player 2", action: 'paper') }
      subject(:game) { Game.new(player_1, player_2) }

      it 'should not return a winner' do
        game.calculate_outcome
        expect(game.winner).to be nil
      end

      it 'should return "draws with"' do
        game.calculate_outcome
        expect(game.outcome_message).to eq 'draws with'
      end
    end
  end
end