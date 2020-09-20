require 'game'

describe Game do    
    
    let(:game) {Game.new("Johnny")}

    let(:game_double) {double(:game_double, :player=>"Johnny", :player_choice=>"Rock", :cpu_choice=>"Scissors")}
    

    describe 'Show choices' do
        it 'Game class will respond to show choice method' do
            expect(game).to respond_to(:show_choices)
        end
    end
    
    describe 'Player wins' do
        it 'Player selects Rock and CPU has picked Scissors' do
            allow(game).to receive(:get_cpu_choice).and_return("Scissors")
            game.set_player_choice("Rock")
            expect(game.get_result).to eq("Johnny")
        end     

        it 'Player selects Scissors and CPU has picked Paper' do
            allow(game).to receive(:get_cpu_choice).and_return("Paper")
            game.set_player_choice("Scissors")
            expect(game.get_result).to eq("Johnny")
        end     


        it 'Player selects Paper and CPU has picked Rock' do
            allow(game).to receive(:get_cpu_choice).and_return("Rock")
            game.set_player_choice("Paper")
            expect(game.get_result).to eq("Johnny")
        end     
    end

    describe 'CPU wins' do
        it 'CPU selects Rock and Player has picked Scissors' do
            allow(game).to receive(:get_cpu_choice).and_return("Rock")
            game.set_player_choice("Scissors")
            expect(game.get_result).to eq("CPU")
        end     

        it 'CPU selects Scissors and Player has picked Paper' do
            allow(game).to receive(:get_cpu_choice).and_return("Scissors")
            game.set_player_choice("Paper")
            expect(game.get_result).to eq("CPU")
        end     


        it 'CPU selects Paper and Player has picked Rock' do
            allow(game).to receive(:get_cpu_choice).and_return("Paper")
            game.set_player_choice("Rock")
            expect(game.get_result).to eq("CPU")
        end     
    end

    describe 'Player and CPU draw' do
        it 'CPU selects Rock and Player has picked Rock' do
            allow(game).to receive(:get_cpu_choice).and_return("Rock")
            game.set_player_choice("Rock")
            expect(game.get_result).to eq("Draw")
        end     

        it 'CPU selects Scissors and Player has picked Scissors' do
            allow(game).to receive(:get_cpu_choice).and_return("Scissors")
            game.set_player_choice("Scissors")
            expect(game.get_result).to eq("Draw")
        end     


        it 'CPU selects Paper and Player has picked Paper' do
            allow(game).to receive(:get_cpu_choice).and_return("Paper")
            game.set_player_choice("Paper")
            expect(game.get_result).to eq("Draw")
        end     
    end


end