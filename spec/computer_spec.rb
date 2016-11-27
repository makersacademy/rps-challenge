require 'computer'

describe Computer do
  subject(:game) { described_class.new }

  describe '#computer_choices' do
    it "can choose between rock, paper or scissors" do
      expect(game.computer_choices).to include(:rock, :paper, :scissors)
    end

    it "can choose a random selection" do
      expect([:rock, :paper, :scissors]).to include(game.computer_choice)
    end
  end

end
