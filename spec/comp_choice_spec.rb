require 'comp_choice'

describe CompChoice do

  subject(:comp_choice) { described_class.new }

  describe 'comp_choice' do
    it 'saves the computers choice' do
      expect(CompChoice::CHOICE).to include(comp_choice.comp_choice) 
    end
  end

end  