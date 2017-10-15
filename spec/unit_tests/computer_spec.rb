require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

    it 'can create a new class object' do
      expect(computer).to be_an_instance_of described_class
    end

  describe '#weapon' do
    it "can return a random weapon from rock, paper or scissors" do
      expect([:rock, :paper, :scissors]).to include(computer.weapon) 
    end
  end

end
