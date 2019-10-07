require 'game'

describe Game do
  
  describe 'Game played between registered player 1 and 2' do
    let(:rps) { Game.create_players(registeredplayer1, registeredplayer2) }
    let(:registeredplayer1) { double('registeredplayer1', name: 'Helen') }
    let(:registeredplayer2) { double('registeredplayer2', name: 'Emma') }

    it 'A win for registered player one' do
      allow(registeredplayer1).to receive(:tool).and_return('Rock')
      allow(registeredplayer2).to receive(:tool).and_return('Scissors')
      expect(rps.result).to eq "Congratulations Helen - you won and should be proud of how amazing you are! I'm sorry Emma - you lost this time, but never give up!"
    end

    it 'A win for registered player two' do
      allow(registeredplayer1).to receive(:tool).and_return('Paper')
      allow(registeredplayer2).to receive(:tool).and_return('Scissors')
      expect(rps.result).to eq "Congratulations Emma - you won and should be proud of how amazing you are! I'm sorry Helen - you lost this time, but never give up!"
    end

    it 'A draw' do
      allow(registeredplayer1).to receive(:tool).and_return('Rock')
      allow(registeredplayer2).to receive(:tool).and_return('Rock')
      expect(rps.result).to eq "It's a draw this time Helen & Emma - it seems you're just as good as each other. Great mind think alike!!"
    end

  end
end