require 'turn'

describe Turn do
    subject(:turn) { described_class.new(options) }
    let(:options) { {"player_name" => "Merryn", "player_shape" => :Rock, "opponent_shape" => :Scissors} }

    describe '#player_name' do
        it 'returns player name' do
            expect(turn.player_name).to eq 'Merryn'
        end
    end

    describe '#player_shape' do
        it 'returns player shape' do
            expect(turn.player_shape).to eq :Rock
        end
    end

    describe '#opponent_shape' do
        it 'returns opponent shape' do
            expect(turn.opponent_shape).to eq :Scissors
        end
    end

    context 'end game' do

        subject(:win_turn) {turn}
        subject(:lose_turn) { described_class.new(lose_options)}
        subject(:draw_turn) { described_class.new(draw_options)}

        let(:lose_options) { {"player_name" => "Merryn", "player_shape" => :Paper, "opponent_shape" => :Scissors} }
        let(:draw_options) { {"player_name" => "Merryn", "player_shape" => :Scissors, "opponent_shape" => :Scissors} }




        describe '#win?' do
            it 'returns true if player chooses rock and opponent is scissors' do
                expect(turn.win?).to eq true 
            end
        end

        describe '#lose?' do
            it 'returns true if player chooses paper and opponent is scissors' do
                expect(lose_turn.lose?).to eq true 
            end
        end

        describe '#draw?' do
            it 'returns true if player chooses scissors and opponent is scissors' do
                expect(draw_turn.draw?).to eq true 
            end
        end

    end

end