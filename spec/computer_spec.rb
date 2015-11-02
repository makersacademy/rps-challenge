require 'computer'

describe Computer do
  subject(:comp) { described_class.new }

  context 'on initialize' do
    it 'should be named computer' do
      expect(comp.name).to eq 'Computer'
    end
    it 'should have a selection of nil' do
      expect(comp.selection).to be_nil
    end
  end


  describe '#comp_choice' do
    it 'selects an available choice' do
      expect(Computer::CHOICES).to include(comp.comp_choice)
    end
  end
end