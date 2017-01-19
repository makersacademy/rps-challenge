require 'god'

describe God do

  subject(:god) { described_class.new }

  describe '#god_choice' do
    it "should be able to choose a weapon" do
      srand(2)
      expect(god.weapon).to eq :rock
    end
  end

end
