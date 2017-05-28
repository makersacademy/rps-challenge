require 'opponent'

describe Opponent do
  subject(:opponent) { described_class.new }

  it 'should have a list of weapons when initialized' do
    expect(opponent.weapons).to include :rock
    expect(opponent.weapons).to include :paper
    expect(opponent.weapons).to include :scissors
  end

  describe '#choose_random_weapon' do
    it '' do
      expect(opponent.choose_random_weapon).to be(:rock).or(be :paper).or(be :scissors)
    end
  end
end
