require './lib/game.rb'

describe Game do
    let(:player) { double(:name => "Player 1")  }
    subject(:game) { described_class.new (player) }

    describe "#initialize" do
        it "should store the player" do
            expect(game.player).to eq player
        end    
        
        it "should have an score hash with values 0" do
            expect(game.score_hash[:player]).to eq 0
            expect(game.score_hash[:computer]).to eq 0
        end
    end

    describe "#player_move" do
        it "should store the players move" do
            game.player_move('Rock')
            expect(game.move).to eq 'Rock' 
        end
    end

    describe "#computer_move" do
        it "should return a random move" do
            game.computer_move
            move_array = ["Rock","Paper","Scissors"]
            expect(move_array).to include game.c_move
        end
    end

    describe "#winner" do
        it "should return a draw if values are the same" do
            game.winner move = "Rock", c_move = "Rock"
            expect(game.result). to eq "Draw"
            game.winner move = "Paper", c_move = "Paper"
            expect(game.result). to eq "Draw"
            game.winner move = "Scissors", c_move = "Scissors"
            expect(game.result). to eq "Draw"
        end

        it "should return a player as the winner" do
            game.winner move = "Rock", c_move = "Scissors"
            expect(game.result).to eq player
            game.winner move = "Paper", c_move = "Rock"
            expect(game.result). to eq player
            game.winner move = "Scissors", c_move = "Paper"
            expect(game.result). to eq player
        end

        it "should return a computer as the winner" do
            game.winner move = "Scissors", c_move = "Rock"
            expect(game.result).to eq "Computer"
            game.winner move = "Rock", c_move = "Paper"
            expect(game.result). to eq "Computer"
            game.winner move = "Paper", c_move = "Scissors"
            expect(game.result). to eq "Computer"
        end
    end

    describe "#score" do
        it "should increase player by 1 on win" do
            expect{game.winner move = "Rock", c_move = "Scissors"}.to change{game.score_hash[:player]}.by(1)
        end

        it "should increase computer by 1 on win" do
            expect{game.winner move = "Scissors", c_move = "Rock"}.to change{game.score_hash[:computer]}.by(1)
        end
    end
end