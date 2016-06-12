require 'player'

describe Player do

  subject(:marlon) { described_class.new('Marlon', :rock) }
  subject(:dave) { described_class.new('Dave', :scissors) }

  describe '#name' do
    it "displays the players name" do
      expect(marlon.name).to eq('Marlon')
    end
  end

  describe '#choice' do
    it "displays the players choice" do
      expect(dave.display_choice).to eq("Scissors")
    end
  end
end
