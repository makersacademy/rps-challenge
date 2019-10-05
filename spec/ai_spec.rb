require 'ai'

describe AI do
  describe '#get_move' do
    before :each do
      allow_any_instance_of(Array).to receive(:sample) { :scissors }
    end
    
    it 'picks a move randomly' do
      expect(subject.get_move).to eq(:scissors)
    end
  end
end