require 'player'

describe Player do
    player_one = Player.new('Court')

    describe '#name' do 
      it 'returns the name' do
        expect(player_one.name).to eq 'Court'
      end 
    end 
end