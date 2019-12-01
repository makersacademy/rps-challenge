require 'computer'
require 'rules'

describe Computer do

  let(:name) { double :name }
  let(:choices) { double :choices } 
  subject(:computer) { Computer.new(name, choices) }

  before do
    allow(choices).to receive(:sample).and_return(:rock)
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
