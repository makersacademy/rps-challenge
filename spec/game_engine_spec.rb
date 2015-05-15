require 'game_engine'

describe GameEngine do
  context 'Playing Rock Paper Scissors' do
    it "TIE - Player and CPU both choose scissors." do
      subject.cpu_choice
      expect(subject.result(:scissors)).to eq(:TIE)
    end

    it "Player wins - Player chooses rock, CPU chooses scissors." do
      subject.cpu_choice
      expect(subject.result(:rock)).to eq(:WIN)
    end

 	it "Player loses - Player chooses paper, CPU chooses scissors." do
      subject.cpu_choice
      expect(subject.result(:paper)).to eq(:LOSE)
    end

    it "Testing cpu_choice - Player loses - Player chooses paper, CPU chooses rock." do
      subject.cpu_choice(0)
      expect(subject.result(:paper)).to eq(:LOSE)
    end

  end
end
