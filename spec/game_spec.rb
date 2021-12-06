require 'game'

describe Game do
  let(:player) { Player.new('Pikachu') }
  let(:bot) { Bot.new }
  let(:subject) { Game.new(player, bot) }

  describe '#winner_with_rock' do
    it 'returns Pikachu' do
      subject.winner_with_rock('scissors')
      expect(subject.winner).to eq 'Pikachu'
    end

    it 'returns Bot' do
      subject.winner_with_rock('paper')
      expect(subject.winner).to eq 'Bot'
    end

    it 'returns a tie' do
      expect(subject.winner_with_rock('rock')).to eq "Nobody"
    end

    it 'adds point to Pikachu' do
      subject.winner_with_rock('scissors')
      expect(subject.player.points).to eq 1
    end

    it 'adds point to the Bot' do
      subject.winner_with_rock('paper')
      expect(subject.bot.points).to eq 1
    end
  end

  describe '#winner_with_paper' do
    it 'returns Bot' do
      subject.winner_with_paper('scissors')
      expect(subject.winner).to eq 'Bot'
    end

    it 'returns Pikachu' do
      subject.winner_with_paper('rock')
      expect(subject.winner).to eq 'Pikachu'
    end

    it 'returns a tie' do
      subject.winner_with_paper('paper')
      expect(subject.winner).to eq "Nobody"
    end

    it 'adds point to Pikachu' do
      subject.winner_with_paper('rock')
      expect(subject.player.points).to eq 1
    end

    it 'adds point to the Bot' do
      subject.winner_with_paper('scissors')
      expect(subject.bot.points).to eq 1
    end
  end

  describe '#winner_with_scissors' do
    it 'returns a tie' do
      subject.winner_with_scissors('scissors')
      expect(subject.winner).to eq "Nobody"
    end

    it 'returns Pikachu' do
      subject.winner_with_scissors('paper')
      expect(subject.winner).to eq 'Pikachu'
    end

    it 'returns Bot' do
      subject.winner_with_scissors('rock')
      expect(subject.winner).to eq 'Bot'
    end

    it 'adds point to Pikachu' do
      subject.winner_with_scissors('paper')
      expect(subject.player.points).to eq 1
    end

    it 'adds point to the Bot' do
      subject.winner_with_scissors('rock')
      expect(subject.bot.points).to eq 1
    end
  end
end
