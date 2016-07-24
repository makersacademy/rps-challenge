require 'player'

describe Player do

  subject(:genghis) {Player.new( 'Genghis') }
    describe "#name" do
      it 'returns the name' do
        expect(genghis.name).to eq( 'Genghis' )
      end
    end
end
