require 'player_name'

describe PlayerName do 
    subject(:julia) {PlayerName.new('Julia')}
    subject(:computer) {PlayerName.new('Computer')}


    describe '#name' do
        it "player name returned" do
        expect(julia.name).to eq 'Julia'
        end   
    end

    describe '#num_turns' do
        it "return the number of turns" do
            expect(julia.num_turns).to eq described_class::MAX_TURNS
        end   
    end

end
