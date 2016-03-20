require 'memory'

describe Memory do
  let(:test_memory) {described_class}
  let(:dummy_game) {double :game}

  describe 'self#save_game' do

      it 'save a game instance' do
        expect(test_memory).to respond_to :save_game
      end

  end

  describe 'self#load_game' do

    it 'loads a game instance' do
      test_memory.save_game dummy_game
      expect(test_memory.load_game).to eq dummy_game
    end

  end

end
