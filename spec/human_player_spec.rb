require 'human_player'

describe HumanPlayer do
  subject(:human_player) { described_class.new("James") }
  describe '#initialize' do
    it 'sets its arg to @name' do
      expect(human_player).to have_attributes(name: "James")
    end
  end
  describe '#choice' do
    it 'returns its arg as lowercase symbol' do
      expect(human_player.choice("Rock")).to eq :rock
    end
  end
end
