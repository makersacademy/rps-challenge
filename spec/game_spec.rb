require 'game'

describe Game do 

  context "set up" do
    it 'input from the player' do
      expect(subject.input).to eq(["paper"])
    end

    it 'input from a computer opponent' do
      allow(subject).to receive(:opponent) { "rock" }
      expect(subject.opponent).to eq("rock")
    end

    it 'answer is random from the computer opponent' do
      expect(["rock","paper","scissor"]).to include(subject.opponent)
    end
  end 

  context "result" do
  #   it 'rock vs. scissor' do 
  #     allow(game).to receive(:input) { ["rock", "scissor"] }
  #     expect(game.result).to eq("You lose!")
  #   end

    # it 'rock vs. paper' do 
    #   allow(subject).to receive(:opponent) { "rock" }
    #   allow(subject).to receive(:player_input) { "paper" }
    #   expect(subject.result).to eq("You win!")
    # end

  #   it 'scissor vs. paper' do 
  #     allow(subject).to receive(:opponent) { "scissor" }
  #     allow(subject).to receive(:player_input) { "rock" }
  #     expect(subject.result).to eq("You win!")
  #   end

  #   it 'scissor vs. paper' do 
  #     allow(subject).to receive(:opponent) { "scissor" }
  #     allow(subject).to receive(:player_input) { "paper" } 
  #     expect(subject.result).to eq("You lose!")
  #   end

  #   it 'paper vs. scissor' do 
  #     allow(subject).to receive(:opponent) { "paper" }
  #     allow(subject).to receive(:player_input) { "scissor" }
  #     expect(subject.result).to eq("You win!")
  #   end

  #   it 'paper vs. rock' do 
  #     allow(subject).to receive(:opponent) { "paper" }
  #     allow(subject).to receive(:player_input) { "rock" }
  #     expect(subject.result).to eq("You lose!")
  #   end

  #   it 'when it is a draw' do
  #     allow(subject).to receive(:opponent) { "rock" }
  #     allow(subject).to receive(:player_input) { "rock" }
  #     expect(subject.result).to eq("Draw!")
  #   end
  end
end
