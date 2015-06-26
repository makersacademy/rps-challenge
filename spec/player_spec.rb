require 'player'

describe Player do

    it { is_expected.to respond_to :name }

    it 'can choose rock, paper or scissors' do
      expect(subject).to respond_to(:choose).with(1).argument
    end

    it 'knows which out of rock, paper or scissors it has chosen' do
      expect(subject).to respond_to(:choice)
    end

    it 'can receive rock, paper or scissors' do
      expect(subject).to respond_to(:receive).with(1).argument
    end

    it 'can win or lose' do
      expect(subject).to respond_to(:win_lose)
    end
end
