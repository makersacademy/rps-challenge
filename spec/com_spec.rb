require 'com'

describe Computer do
  subject(:computer) { Computer.new }


  describe '#generate_choice' do
    it 'Generate the computers choice at random' do
      srand(2)
      computer.generate_choice
      expect(computer.choice).to eq 'Rock'
    end
  end

end