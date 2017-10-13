require 'marketeer'

describe Marketeer do
  subject(:marketeer) { described_class.new("Liv") }

  describe 'Name' do
    it "returns the marketeer's name" do
      expect(marketeer.name).to eq 'Liv'
    end
  end

#   it 'Allows the marketeer to select an option' do
#     expect(marketeer.)
#   end
end
