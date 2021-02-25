require './models/player'

  describe Player do
    subject(:lee) { Player.new('Lee') }

    describe '#name' do 
        it 'returns the name of the player' do
            expect(lee.name).to eq 'Lee'
        end
    end

    

  end