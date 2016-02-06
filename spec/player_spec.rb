require 'player'

describe Player do

  subject(:player) { described_class.new("sarah") }

    describe 'name' do
      it 'returns the players name' do
        expect(player.name).to eq "sarah"
      end
    end

    describe 'choose an option' do
      it 'chooses rock, paper or scissors as an option' do
      expect(player.choose).to eq("rock" || "paper" ||  "scissor")
      end
    end

end
