require './lib/game'

describe Game do
  let(:player) { double :player, :name => 'Jon' }
  let(:computer) { double :player, :name => 'Computer' }
  subject(:game) { Game.create(player, computer) }
  
  describe '#initialize' do
    it 'should have a real player' do
      expect(game.player).to be player
    end
    
    it 'should have a computerised player' do
      expect(game.computer).to be computer
    end
  end
  
  describe '#Game.create' do
    it 'should create a game' do
      expect(Game.create(player, computer)).to be_a_kind_of(Game)
    end
  end

  describe '#Game.instance' do
    it 'should always return the same game (singleton)' do
      game_1 = Game.create(player, computer)
      game_2 = Game.instance
      expect(game_1).to be game_2
    end
  end

  describe '#round_outcome' do
    context 'player wins' do
      it 'rock blunts scissors' do
        allow(player).to receive(:choice).and_return(:rock)
        allow(computer).to receive(:choice).and_return(:scissors)
        expect(game.round_outcome).to eq 'You win!'
      end

      it 'paper wraps rock' do
        allow(player).to receive(:choice).and_return(:paper)
        allow(computer).to receive(:choice).and_return(:rock)
        expect(game.round_outcome).to eq 'You win!'
      end

      it 'scissors cut paper' do
        allow(player).to receive(:choice).and_return(:scissors)
        allow(computer).to receive(:choice).and_return(:paper)
        expect(game.round_outcome).to eq 'You win!'
      end
    end

    context 'player loses' do
      it 'rock blunts scissors' do
        allow(computer).to receive(:choice).and_return(:rock)
        allow(player).to receive(:choice).and_return(:scissors)
        expect(game.round_outcome).to eq 'You lose!'
      end

      it 'paper wraps rock' do
        allow(computer).to receive(:choice).and_return(:paper)
        allow(player).to receive(:choice).and_return(:rock)
        expect(game.round_outcome).to eq 'You lose!'
      end

      it 'scissors cut paper' do
        allow(computer).to receive(:choice).and_return(:scissors)
        allow(player).to receive(:choice).and_return(:paper)
        expect(game.round_outcome).to eq 'You lose!'
      end
    end

    context 'its a draw' do
      it 'rock vs. rock' do
        allow(computer).to receive(:choice).and_return(:rock)
        allow(player).to receive(:choice).and_return(:rock)
        expect(game.round_outcome).to eq "It's a draw!"
      end

      it 'paper vs. paper' do
        allow(computer).to receive(:choice).and_return(:paper)
        allow(player).to receive(:choice).and_return(:paper)
        expect(game.round_outcome).to eq "It's a draw!"
      end

      it 'scissors vs. scissors' do
        allow(computer).to receive(:choice).and_return(:scissors)
        allow(player).to receive(:choice).and_return(:scissors)
        expect(game.round_outcome).to eq "It's a draw!"
      end
    end

    context 'unknown outcome' do
      it 'banana vs. tangerine' do
        allow(computer).to receive(:choice).and_return(:banana)
        allow(player).to receive(:choice).and_return(:tangerine)
        msg = "I don't know who won! " +
              "Player: #{player.choice}, " +
              "Computer: #{computer.choice}"
        expect { game.round_outcome }.to raise_error msg
      end
    end
  end

  describe '#reset_choices' do
    it 'should reset both players choices' do
      expect(player).to receive(:reset_choice)
      expect(computer).to receive(:reset_choice)
      game.reset_choices
    end
  end
end
