require 'rps'

describe RPS do

  before do
    RPS.new_game(player, computer)
  end

  #Can't figure out how to access the instance variable "name" from a double?

  let(:computer) { double(:Computer, name: "Computer") }
  let(:player) { double(:Player, name: "Ed") }
  let(:rps) { RPS.current_game }

  context 'the game will choose a random option' do
    
    it 'inits with 2 players' do
      expect(rps.players.length).to eq 2
    end

  end

  context 'a winner will be declared' do
    
    it 'user: WIN, paper' do
      p "first #{rps.player_one}"
      allow(rps).to receive(:get_computer_choice).and_return("rock")
      expect(rps.show_winner("paper")).to eq "Congratulations! Your paper demolished Computer's rock"
    end

    it 'user: Lose, paper' do
      p "second #{rps.player_two}"
      allow(rps).to receive(:get_computer_choice).and_return("scissors")
      expect(rps.show_winner("paper")).to eq "Unlucky, your paper was beaten by Computer's scissors"
    end

    it 'user: Draw, paper' do
      allow(rps).to receive(:get_computer_choice).and_return("paper")
      expect(rps.show_winner("paper")).to eq "Draw...A fair fight is a fair fight, you both chose paper"
    end

  end

end