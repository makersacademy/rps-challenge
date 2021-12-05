require 'player'

describe Player do
  let(:subject) { Player.new('Pikachu') }

  describe '#choose_rock' do
    it 'picks rock' do
      expect(subject.choose_rock).to eq 'rock'
    end
  end

  describe '#choose_paper' do
    it 'picks paper' do
      expect(subject.choose_paper).to eq 'paper'
    end
  end

  describe '#choose_scissors' do
    it 'picks scissors' do
      expect(subject.choose_scissors).to eq 'scissors'
    end
  end

  # describe '#winner_with_rock' do
  #   it 'returns Pikachu' do
  #     expect(subject.winner_with_rock('scissors')).to eq 'Pikachu'
  #   end

  #   it 'returns Bot' do
  #     expect(subject.winner_with_rock('paper')).to eq 'Bot'
  #   end

  #   it 'returns a tie' do
  #     expect(subject.winner_with_rock('rock')).to eq "Nobody"
  #   end
  # end

  # describe '#winner_with_paper' do
  #   it 'returns Bot' do
  #     expect(subject.winner_with_paper('scissors')).to eq 'Bot'
  #   end

  #   it 'returns Pikachu' do
  #     expect(subject.winner_with_paper('rock')).to eq 'Pikachu'
  #   end

  #   it 'returns a tie' do
  #     expect(subject.winner_with_paper('paper')).to eq "Nobody"
  #   end
  # end

  # describe '#winner_with_scissors' do
  #   it 'returns a tie' do
  #     expect(subject.winner_with_scissors('scissors')).to eq "Nobody"
  #   end

  #   it 'returns Pikachu' do
  #     expect(subject.winner_with_scissors('paper')).to eq 'Pikachu'
  #   end

  #   it 'returns Bot' do
  #     expect(subject.winner_with_scissors('rock')).to eq 'Bot'
  #   end
  # end
end
