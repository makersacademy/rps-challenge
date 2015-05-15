require 'game_engine'

describe GameEngine do
  context 'Playing Rock Paper Scissors' do
    it "TIE - Player and CPU both choose rock." do
      allow(subject).to receive(subject.cpu_choice).and_return(:rock)
      expect(subject.result(:rock)).to eq(:TIE)
    end

    it "Player wins - Player chooses rock, CPU chooses scissors." do
      allow(subject).to receive(subject.cpu_choice).and_return(:scissors)
      expect(subject.result(:rock)).to eq(:WIN)
    end

  end
end
