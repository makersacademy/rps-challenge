require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  let(:possible_hands) { ['Rock','Paper','Scissors'] }
 
  
  describe '#play_hand' do
    it 'starts of with an empty hand' do
      expect(computer.hand).to be false
    end
    
    it 'plays a random hand(r/p/s)' do
      computer.play_hand
      expect(possible_hands).to include(computer.hand)
    end
  end
end
