require 'player'


describe Player do

  subject(:larry) { Player.new('Larry') }  
  describe '#name' do

    it 'returns the name' do
        expect(larry.name).to eq 'Larry'
      end

    end

    # describe '#shape' do

    # it 'returns the shape chosen by the human player' do
    #  expect(larry.shape).to eq 'Rock'
    # end


    # end
  end
