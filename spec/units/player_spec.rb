require 'player'

describe Player do
    subject(:player1) { Player.new(:firstname) }

    describe '#name' do
        it 'responds to name when called'do
            expect(player1).to respond_to(:name)
            player1.name
        end
    end
end
