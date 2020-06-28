require './lib/rps.rb'

describe 'RPS' do
  subject(:rps) { RPS.new }
  it 'creates an instance of RPS' do
    expect(subject).to be_an_instance_of(RPS)
  end

  describe '#result' do
     it 'returns a string if its a draw' do
      expect(subject.result("rock", "rock")).to eq("It's a draw!")
    end
    
    it 'returns a string if player wins' do
      expect(subject.result("rock", "scissors")).to eq("You win!")
    end

    it 'returns a string if computer wins' do
      expect(subject.result("scissors", "rock")).to eq("Computer wins!")
    end
  end
end

