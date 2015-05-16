require 'rps'

describe RPS do
  context 'Classic rock, paper, scissors' do
    before :each do
      srand 2 # makes CPU always return :rock
    end

    it 'TIE: Player & CPU choose rock' do
      expect(subject.results(:rock)[:result]).to eq :tie
    end

    it 'WIN: Player chooses paper & CPU chooses rock' do
      expect(subject.results(:paper)[:result]).to eq :win
    end

    it 'LOSE: Player chooses paper & CPU chooses rock' do
      expect(subject.results(:scissors)[:result]).to eq :lose
    end
  end

  context 'Extended version: incl. lizard & spock' do
    before :each do
      srand 7 # makes CPU always return :spock
    end

    it 'LOSE: Player chooses scissors & CPU chooses spock' do
      expect(subject.results(:scissors)[:result]).to eq :lose
    end

    it 'WIN: Player chooses lizard & CPU chooses spock' do
      expect(subject.results(:lizard)[:result]).to eq :win
    end
  end
end
