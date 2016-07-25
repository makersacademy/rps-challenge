require 'game'

describe Game do

  subject { described_class.new("player") }

  describe '#result' do
    it 'responds to a paper tie' do
      subject.player_move("Paper")
      allow_any_instance_of(Array).to receive(:sample).and_return("Paper")
      subject.computer_choice
      expect(subject.result).to eq(subject.tie_break)
    end
    it 'responds to a rock tie' do
      subject.player_move("Rock")
      allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
      subject.computer_choice
      expect(subject.result).to eq(subject.tie_break)
    end
    it 'responds to a scissors tie' do
      subject.player_move("Scissors")
      allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
      subject.computer_choice
      expect(subject.result).to eq(subject.tie_break)
    end
    it 'responds to a player one rock win' do
      subject.player_move("Rock")
      allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
      subject.computer_choice
      expect(subject.result).to eq(subject.player_1_wins)
    end
  end
end
