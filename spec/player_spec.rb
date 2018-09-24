require 'player.rb'

describe Player do
  let(:name) { double(:name) }
  it 'is initialized with a name as a parameter' do
    expect(subject.name).to eql("Skynet")
  end
  it{is_expected.to respond_to :weapons}

  describe '#random_move' do
    it 'randomly returns a choice between rock, paper and scissors' do
      allow(subject.weapons).to receive(:sample).and_return("rock")
      subject.random_move
      expect(subject.choice).to eql("rock")
    end
  end

  describe '#add_special_weapons' do
    it 'adds lizard and spock to choice of weapons' do
      subject.add_special_weapons
      expect(subject.weapons).to include "spock"
      expect(subject.weapons).to include "lizard"
    end
  end

end