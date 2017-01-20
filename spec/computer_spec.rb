require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe 'points' do
    it "initializes with a default amount of points" do
      expect(computer.wins).to eq(Computer::HANDICAP)
    end
  end
end
