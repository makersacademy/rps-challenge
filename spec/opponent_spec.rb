require 'opponent'

RSpec.describe Opponent do
  subject(:denzel) { described_class.new }

  describe '#random_weapon' do
    it 'chooses a random weapon' do
      expect([:rock, :paper, :scissors]).to include(subject.random_weapon)
    end
  end
end
