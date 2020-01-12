require 'computer'

describe "Computer" do
  subject(:computer) { Computer.new }

  describe '#guess' do
    it 'returns rock' do
      computer.random_seed = 0
      expect(computer.guess).to eq 'Rock'
    end

    it 'returns rock' do
      computer.random_seed = 1
      expect(computer.guess).to eq 'Paper'
    end

    it 'returns rock' do
      computer.random_seed = 3
      expect(computer.guess).to eq 'Scissors'
    end
  end

  describe "#radom_seed_gen" do
    it 'returns a value between 1 & 1_000_000' do
      expect(computer.random_seed_gen).to be_between(1, 1_000_000)
    end
  end
end