require 'computer'

describe Computer do
  describe 'random sample of paper' do
    def sample(random = Random.new)
      ["rock", "paper", "scissors"].sample(random: random)
    end
  
    specify do
      expect(sample(Random.new(0))).to eq('rock')
    end
  end

end
