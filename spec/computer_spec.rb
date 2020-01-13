describe "Computer" do
  subject(:computer) { Computer.new }

  describe '#guess' do
    it 'returns rock' do
      computer.random_seed = 2
      expect(computer.guess).to eq 'Rock'
    end

    it 'returns Paper' do
      computer.random_seed = 10
      expect(computer.guess).to eq 'Paper'
    end

    it 'returns Scissors' do
      computer.random_seed = 3
      expect(computer.guess).to eq 'Scissors'
    end

    it 'returns Spock' do
      computer.random_seed = 1
      expect(computer.guess).to eq 'Spock'
    end

    it 'returns Lizard' do
      computer.random_seed = 0
      expect(computer.guess).to eq 'Lizard'
    end
  end

  describe "#radom_seed_gen" do
    it 'returns a value between 1 & 1_000_000' do
      expect(computer.random_seed_gen).to be_between(1, 1_000_000)
    end
  end
end
