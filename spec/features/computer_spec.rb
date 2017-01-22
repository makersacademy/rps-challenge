require 'computer'

describe Computer do
  subject(:computer) { Computer.new }

  describe '#comp_choice' do
    it "returns the computer's randomised choice" do
      expect(computer.comp_choice).to eq 'rock'
    end
  end
end
