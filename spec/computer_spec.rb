require 'computer'

describe Computer do
  subject(:comp) { Computer.new }
  describe '#initialize' do
    it "initializes with an array of options to select" do
      expect(subject.options).to include("Rock" && "Paper" && "Scissors")
    end
  end

  describe '#selection' do
    it "selects an option randomly" do
      expect(subject.options).to include(subject.selection)
    end
  end
end
