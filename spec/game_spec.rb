describe Game do
  let(:player1) { spy :player, id: "player1", weapon?: false }
  let(:player2) { spy :player, id: "player2", weapon?: false }
  let(:computer) { spy :computer, id: "Computer" }
  let(:rock) { double :rock, type: :rock }
  let(:paper) { double :paper, type: :paper }
  let(:weapon_class) { double :weapon_class }

  let(:game) do
    id = described_class.start_game(player1, player2, weapon_class)
    described_class.games(id)
  end

  before do
    allow(weapon_class).to receive(:new).with(:rock, described_class::RULES).and_return(rock)
    allow(weapon_class).to receive(:new).with(:paper, described_class::RULES).and_return(paper)
  end

  describe '#self.start_game & self.game' do
    it 'creates and stores a game' do
      expect(game).to be_an_instance_of(described_class)
    end
  end

  context '2 player game' do
    describe '#player1' do
      it 'returns the player' do
        expect(game.player1).to be player1
      end
    end

    describe '#player2' do
      it 'returns the player' do
        expect(game.player2).to be player2
      end
    end

    describe '#add_weapon' do
      it 'adds a weapon to a player' do
        game.add_weapon(player1.object_id, "rock")
        expect(player1).to have_received(:give_weapon).with(:rock)
      end

      it 'raises error for invalid weapons' do
        expect { game.add_weapon(player1.object_id, "stone") }.to raise_error("Not a valid weapon")
      end

      it 'fails if the player already has a weapon' do
        allow(player1).to receive(:weapon?).and_return(true)
        expect { game.add_weapon(player1.object_id, "rock") }.to raise_error("Player already has a weapon")
      end
    end

    describe '#ready?' do
      it 'returns true when players have their weapons' do
        allow(player1).to receive(:weapon?).and_return(true)
        allow(player2).to receive(:weapon?).and_return(true)
        expect(game.ready?).to be true
      end

      it 'returns false when players dont have their weapons' do
        expect(game.ready?).to be false
      end
    end

    describe '#play' do
      context 'different weapons' do
        before do
          allow(player1).to receive(:weapon).and_return(:rock)
          allow(player2).to receive(:weapon).and_return(:paper)
          allow(rock).to receive(:beats?).with(paper).and_return(false)
          game.play
        end
        it 'sets a winner' do
          expect(game.winner).to be player2
        end

        it 'updates the score' do
          expect(game.player2_score).to eq 1
          expect(game.player1_score).to eq 0
        end
      end

      context 'same weapons' do
        before do
          allow(player1).to receive(:weapon).and_return(rock)
          allow(player2).to receive(:weapon).and_return(rock)
          game.play
        end
        it 'sets the result' do
          expect(game.result).to be :draw
        end

        it 'does not update the score' do
          expect(game.player2_score).to eq 0
          expect(game.player1_score).to eq 0
        end
      end
    end

    describe '#reset' do
      it 'resets the players' do
        game.reset
        expect(player1).to have_received(:remove_weapon)
        expect(player2).to have_received(:remove_weapon)
      end
    end
  end

  context '1 player game' do
    before do
      id = described_class.start_game(player1, computer, weapon_class)
      @game = described_class.games(id)
      allow(computer).to receive(:is_a?).with(Computer).and_return(true)
    end

    describe '#add_weapon' do
      it 'asks the computer to set its own weapon' do
        @game.add_weapon(player1.object_id, "rock")
        expect(computer).to have_received(:give_weapon).with(no_args)
      end
    end
  end
end
