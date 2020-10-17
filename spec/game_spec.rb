require 'game'

describe Game do

  describe '#comp_choose_rps' do
    it 'selects a random choice from an array' do
      expect(['rock', 'paper', 'scissors']).to include(subject.comp_choose_rps)
    end
  end

  describe '#compare_choices' do

    it 'says if the choices are tied' do
      allow(subject).to receive(:choices_equal?) { true }
      expect(subject.compare_choices).to eq 'tie'
    end
    it 'confirms player win' do
      allow(subject).to receive(:choices_equal?) { false }
      allow(subject).to receive(:player_wins?) { true }
      expect(subject.compare_choices).to eq 'Player Wins!'
    end
    it 'confirms computer win' do
      allow(subject).to receive(:choices_equal?) { false }
      allow(subject).to receive(:player_wins?) { false }
      expect(subject.compare_choices).to eq 'Computer Wins!'
    end
  end

  describe '#play_rps' do
    it 'allows the computer to make a choice' do
      expect(subject).to receive(:comp_choose_rps)
      subject.play_rps
    end
    
    it 'compares the choices' do
      expect(subject).to receive(:compare_choices)
      subject.play_rps
    end
  end
end
