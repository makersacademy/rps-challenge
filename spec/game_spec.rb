require 'game'

describe Game do

    let(:player) { Player.new }
    let(:computer) { Computer.new }

    it 'should declare player is the winner' do
      player.choose(:rock)
      allow(computer).to receive(:auto).and_return(:scissors)
      expect(subject.winner).to eq("You are the winner!")
    end

    it 'should declare player is the looser' do
      player.choose(:scissors)
      allow(computer).to receive(:auto).and_return(:rock)
      expect(subject.looser).to eq("You loose!")
    end

    it 'should declare if there is a draw' do
      player.choose(:scissors)
      allow(computer).to receive(:auto).and_return(:scissors)
      expect(subject.draw).to eq("It's a draw!")
    end

end
