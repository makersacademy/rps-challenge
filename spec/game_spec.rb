describe Game do
  let(:player1) { spy :player, id: "player1", has_weapon?: true }
  let(:player2) { spy :player, id: "player2", has_weapon?: true  }
  let(:computer) { spy :computer, id: "Computer", has_weapon?: true }
  let(:game) do
    described_class.start_game(player1, player2)
    described_class.game
  end

  describe '#self.start_game & self.game' do
    it 'creates and stores a game' do
      expect(game).to be_an_instance_of(described_class)
    end
  end

  context '2 player game' do
    describe '#add_weapon' do
      before { game.add_weapon(:player1, :rock) }
      it 'adds a weapon to a player' do
        expect(player1).to have_received(:set_weapon).with(:rock)
      end

      it 'fails if the player already has a weapon' do
        expect { game.add_weapon(:player1, :rock) }.to raise_error("Player already has a weapon")
      end
    end

    describe '#ready?' do
      it 'returns true when players have their weapons' do
        expect(game.ready?).to be true
      end

      it 'returns false when players dont have their weapons' do
        allow(player2).to receive(:has_weapon?).and_return(false)
        expect(game.ready?).to be false
      end
    end

    describe '#play' do
      before do
        game.add_weapon(:player1, :rock)
        game.add_weapon(:player2, :paper)
        game.play
      end
      it 'sets a winner' do
        expect(game.winner).to be player2
      end

      it 'updates the score' do
        expect(game.score).to be [0, 1]
      end
    end
  end

  context '1 player game' do
    before do
      described_class.start_game(player1, computer)
      allow(computer).to receive(:is_a?).with(Computer).and_return(true)
    end

    describe '#add_weapon' do
      it 'asks the computer to set its own weapon' do
        described_class.game.add_weapon(:player1, :rock)
        expect(computer).to have_received(:set_weapon).with(no_args)
      end
    end
  end
end
