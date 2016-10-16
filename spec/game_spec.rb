require 'game'

 describe Game do

   let(:player) { double :player }
   let(:computer) { double :computer }

   describe '.create' do
     it 'initializes instance of a new game' do
       allow(described_class).to receive(:new)
       expect described_class.create(player, computer)
      end
   end

   describe '.instance' do
     it 'returns nil at no instance of a game' do
       expect(described_class.instance).to be_nil
     end

     it 'returns the game instance when created' do
       game = described_class.create(player,computer)
       expect(described_class.instance).to eq game
     end
   end

 end
