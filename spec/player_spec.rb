require 'player.rb'

describe Player do

subject (:player) {described_class.new("MAMA")}

  context '@name' do

    it 'should be able to return the players name' do
      expect(player.name).to eq "MAMA"
    end

  end



end
