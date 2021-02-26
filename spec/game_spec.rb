require 'game'

describe Game do

  describe '#random_selection' do
    it "will randomly return rock, paper or scissors" do
      expect(subject.random_selection).to eq("Rock") | eq("Paper") | eq("Scissors")
    end
  end

  describe '#game_results' do

    it "will return draw if both players choose the same" do
      expect(subject.game_results('Rock', 'Rock')).to eq "Noone! It's a Draw"
    end

    it "will return Rock if one player chooses Rock and the other Scissors" do
      expect(subject.game_results('Rock', 'Scissors')).to eq 'Rock'
    end

    it "will return Paper if one player chooses Rock and one Paper" do
      expect(subject.game_results('Rock', 'Paper')).to eq 'Paper'
    end

    it "will return Scissors if one player chooses Scissors and one Paper" do
      expect(subject.game_results('Scissors', 'Paper')).to eq 'Scissors'
    end
  end

  describe '#name' do
    it 'will return The Computer' do
      expect(subject.name).to eq 'The Computer'
    end
  end
end
