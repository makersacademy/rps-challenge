require 'player'

describe Player do
  subject(:dave) { described_class.new("Dave") }

  describe '#name' do
    it 'should return the player\'s name' do
      expect(dave.name).to eq "Dave"
    end
  end

  describe "#player_choice" do
    it 'should set the player\'s weapon' do
      dave.player_choice('ROCK')
      expect(dave.weapon).to eq 'ROCK'
    end
  end

  describe '#score_up' do
    it 'increases the score' do
      expect { dave.score_up }.to change { dave.score }.by(1)
    end
  end

end
