require 'player'

describe Player do

  subject(:player) { described_class.new("sarah") }

    describe 'initialize' do
      it 'returns the players name' do
        expect(player.name1).to eq "sarah"
      end
    end

    describe 'player options' do

      it 'player chooses rock, paper or scissors as an option' do
      player.user_choice = :rock
      expect(player.user_choice).to eq(:rock)
      end

    end
end
