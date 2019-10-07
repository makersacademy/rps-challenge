require 'game'

describe 'Game' do
  let(:real_player) { double(:player) }
  let(:computer_player) { double(:computer_player) }
  let(:winner_calculator) { double(:winner_calculator) }
  let(:game) { Game.new(real_player, computer_player, winner_calculator) }

  before(:each) do
    allow(computer_player).to receive(:move)
  end

  describe '.instance' do
    it 'returns a Game' do
      Game.create(real_player, computer_player)
      expect(Game.instance).to be_a(Game)
    end

    it 'returns the same Game each time' do
      Game.create(real_player, computer_player)
      expect(Game.instance).to be(Game.instance)
    end
  end

  describe '#play' do
    context 'when real player vs computer' do
      context 'when real player wins' do
        it 'sets the move for the real player' do
          allow(winner_calculator).to receive(:calculate).with(real_player, computer_player)
          expect(real_player).to receive(:move=).with(:rock)
          game.play('rock')
        end
        it 'calls calculate on winner_calculator with the two players' do
          expect(winner_calculator).to receive(:calculate).with(real_player, computer_player)
          allow(real_player).to receive(:move=).with(:rock)
          game.play('rock')
        end
        it 'returns the result of winner_calculate.calculate' do
          allow(winner_calculator).to receive(:calculate).with(real_player, computer_player).and_return(real_player)
          allow(real_player).to receive(:move=).with(:rock)
          expect(game.play('rock')).to be real_player
        end
      end
    end
  end

  describe '#last_game_text' do
    before(:each) do
    end

    context 'when real player vs computer' do
      context 'when real player wins' do
        it 'calls name on the player who won' do
          allow(winner_calculator).to receive(:calculate).with(real_player, computer_player).and_return(real_player)
          allow(real_player).to receive(:move=).with(:rock)
          allow(real_player).to receive(:last_move).and_return(:rock)
          allow(computer_player).to receive(:last_move).and_return(:rock)
          allow(computer_player).to receive(:name)
          expect(real_player).to receive(:name).twice
          game.play('rock')
          game.last_game_text
        end
        it 'returns a friendly string' do
          allow(winner_calculator).to receive(:calculate).with(real_player, computer_player).and_return(real_player)
          allow(real_player).to receive(:move=).with(:rock)
          allow(real_player).to receive(:last_move).and_return(:rock)
          allow(computer_player).to receive(:last_move).and_return(:scissors)
          allow(real_player).to receive(:name).and_return('Filbert')
          allow(computer_player).to receive(:name).and_return('Computer')

          game.play('rock')
          expect(game.last_game_text).to eq("Filbert chose rock. Computer chose scissors. Filbert won!")
        end
      end
      context 'when it was a draw' do
        it 'returns a friendly string' do
          allow(winner_calculator).to receive(:calculate).with(real_player, computer_player).and_return(:draw)
          allow(real_player).to receive(:move=).with(:rock)
          allow(real_player).to receive(:last_move).and_return(:rock)
          allow(computer_player).to receive(:last_move).and_return(:rock)
          allow(real_player).to receive(:name).and_return('Filbert')
          allow(computer_player).to receive(:name).and_return('Computer')
          game.play('rock')
          expect(game.last_game_text).to eq("Filbert chose rock. Computer chose rock. It was a draw!")
        end
      end
    end
  end
end