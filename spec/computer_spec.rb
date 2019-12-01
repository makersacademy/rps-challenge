require 'computer'
require 'weapons'

describe Computer do

  let(:name) { double :name }
  let(:weapons) { double :weapons } 
  subject(:computer) { Computer.new(name, weapons) }

  before do
    allow(weapons).to receive(:rules).and_return({rock: [:scissors, :lizard]})
    allow(computer).to receive(:sample).and_return(:rock)
  end

  describe "#name" do 

    it "should return a name" do
      expect(subject.name).to eq(name)
    end

  end

  describe "#choice" do 

    it "should return a random choice" do
      expect(subject.comp_choice).to eq(:rock)
    end
  end
end
