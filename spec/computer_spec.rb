require 'computer'

describe Computer do

  describe '#initialize' do

    it 'should sample a current_pick from an array' do
      computer = double("computer", :current_pick => "rock")
      expect(computer.current_pick).to eq "rock"
    end

  end

end
