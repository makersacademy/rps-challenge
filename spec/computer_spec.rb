require 'computer'

describe 'computer' do
  subject(:imposter_ryan) { Computer.new('Imposter Ryan') }

  describe '#name' do
    it 'computer has a name' do
      expect(imposter_ryan.name).to eq 'Imposter Ryan'
    end
  end

  describe '#computer_move' do
    it 'computer randomly selects move' do
      srand(6)
      expect(imposter_ryan.computer_move).to eq 'scissors'
    end
  end

end
 