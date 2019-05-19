require 'computer'

describe Computer do
  subject(:comp) { Computer.new }
  describe '#initialize' do
    it "initializes with an array of options to select" do
      expect(subject.options).to include("Rock" && "Paper"  && "Scissors")
    end
  end
end
