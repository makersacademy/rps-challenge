require 'game'
require 'player'

describe Game do
    
    # let (:player1) {double :player}
    subject(:game) {described_class.new("Bob")}
    subject(:game2) {described_class.new("Bob", "Pob")}
    let (:computer) {double :computer}

    it 'creates a Player instance when initialised' do
        expect(game.player1.name).to eq "Bob"
    end

    it 'creates a Computer instance when when player2 = nil' do
        game.instance_variable_set(:@computer, computer)
        expect(game.computer).to eq computer
    end

    it 'create a player 2 when player2 is not nil' do
        expect(game2.player2.name).to eq "Pob"
    end

    context "rock crushes paper" do
        it "computer wins when player1_move=rock, computer=paper" do
            expect(game.declare_winner("Rock", "Paper")).to eq "Computer wins!"
        end
        it "player wins when player1_move=paper, computer_move=rock" do
            expect(game.declare_winner("Paper", "Rock")).to eq "Bob wins!"
        end
    end

    context "rock smashes scissors" do
        it "computer wins when player1_move=scissors, computer_move=rock" do
            expect(game.declare_winner("Scissors", "Rock")).to eq "Computer wins!"
        end
        it "player wins when player1_move=rock, computer_move=scissors" do
            expect(game.declare_winner("Rock", "Scissors")).to eq "Bob wins!"
        end
    end

    context "rock smothers paper" do
        it "computer wins when player1_move=rock, computer_move=paper" do
            expect(game.declare_winner("Rock", "Paper")).to eq "Computer wins!"
        end
        it "player wins when player1_move=paper, computer_move=rock" do
            expect(game.declare_winner("Paper", "Rock")).to eq "Bob wins!"
        end
    end

    context "scissors cut paper" do
        it "computer wins when player1_move=paper, computer_move=scissors" do
            expect(game.declare_winner("Paper", "Scissors")).to eq "Computer wins!"
        end
        it "player wins when player1_move=scissors, computer_move=paper" do
            expect(game.declare_winner("Scissors", "Paper")).to eq "Bob wins!"
        end
    end

    context "draw" do
        it "Rock" do
            expect(game.declare_winner("Rock", "Rock")).to eq "Draw"
        end
        it "Paper" do
            expect(game.declare_winner("Paper", "Paper")).to eq "Draw"
        end
        it "Scissors" do
            expect(game.declare_winner("Scissors", "Scissors")).to eq "Draw"
        end
    end
    
end
