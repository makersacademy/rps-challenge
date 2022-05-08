describe Game do
  describe '#new_round' do
    context 'when the previous round has had the outcome decided' do
      let(:player_1) { instance_double("Player") }
      let(:player_2) { instance_double("Player") }
      let(:round) { instance_double("Round", outcome_decided?: true) }
      subject(:game) { Game.new(player_1, player_2, round) }

      it 'should create a new Round' do
        allow(player_1).to receive(:reset_action)
        allow(player_2).to receive(:reset_action)

        expect { game.new_round }.to change { game.round }
      end

      it 'should instruct both players to reset actions' do
        expect(game.players).to all receive :reset_action
        game.new_round
      end
    end
  end

  describe '#switch_turn' do
    let(:player_1) { instance_double("Player") }
    let(:player_2) { instance_double("Player") }
    subject(:game) { Game.new(player_1, player_2) }

    it 'should change the turn to the other player' do
      expect { game.switch_turn }.to change { game.turn }.from(player_1).to(player_2)
    end
  end

  describe '#act_for_computer' do
    context 'when it is player 2\'s turn and player 2 is a computer' do
      let(:player_1) { instance_double("Player") }
      let(:player_2) { instance_double("Computer", computer?: true) }
      subject(:game) { Game.new(player_1, player_2) }

      it 'should instruct Computer to make a random throw' do
        game.switch_turn
        expect(player_2).to receive(:random_throw)
        game.act_for_computer
      end
    end
  end

  describe '#calculate_outcome' do
    context 'when both players have set an action' do
      let(:player_1) { instance_double("Player", action: :rock, thrown_action?: true, increase_score: true) }
      let(:player_2) { instance_double("Player", action: :scissors, thrown_action?: true) }
      let(:round) { instance_double("Round", set_winner: player_1, set_looser: player_2, set_outcome: 'smashes', winner: player_1) }
      subject(:game) { Game.new(player_1, player_2, round) }

      it 'should instruct round to set winner' do
        expect(round).to receive(:set_winner).with(player_1)
        game.calculate_outcome
      end

      it 'should instruct round to set looser' do
        expect(round).to receive(:set_looser).with(player_2)
        game.calculate_outcome
      end

      it 'should instruct round to set outcome' do
        expect(round).to receive(:set_outcome).with('smashes')
        game.calculate_outcome
      end

      it 'should instruct round winner to increase score' do
        expect(round.winner).to receive(:increase_score)
        game.calculate_outcome
      end
    end
  end
end
