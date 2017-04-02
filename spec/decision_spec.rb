require 'decision'

describe Decision do

  subject(:prockcscissors) {described_class.new('Rock', 'Scissors')}
  subject(:prockcpaper) {described_class.new('Rock', 'Paper')}
  subject(:prockcrock) {described_class.new('Rock', 'Rock')}
  subject(:ppapercscissors) {described_class.new('Paper', 'Scissors')}
  subject(:ppapercpaper) {described_class.new('Paper', 'Paper')}
  subject(:ppapercrock) {described_class.new('Paper', 'Rock')}
  subject(:pscissorscscissors) {described_class.new('Scissors', 'Scissors')}
  subject(:pscissorscpaper) {described_class.new('Scissors', 'Paper')}
  subject(:pscissorscrock) {described_class.new('Scissors', 'Rock')}

  describe '#initialize' do

    it 'rock scissors outcome' do
      expect(prockcscissors.outcome).to eq(:playerwin)
    end

    it 'rock paper outcome' do
      expect(prockcpaper.outcome).to eq(:playerlose)
    end

    it 'rock rock outcome' do
      expect(prockcrock.outcome).to eq(:draw)
    end

    it 'paper scissors outcome' do
      expect(ppapercscissors.outcome).to eq(:playerlose)
    end

    it 'paper paper outcome' do
      expect(ppapercpaper.outcome).to eq(:draw)
    end

    it 'paper rock outcome' do
      expect(ppapercrock.outcome).to eq(:playerwin)
    end

    it 'scissors scissors outcome' do
      expect(pscissorscscissors.outcome).to eq(:draw)
    end

    it 'scissors paper outcome' do
      expect(pscissorscpaper.outcome).to eq(:playerwin)
    end

    it 'scissors rock outcome' do
      expect(pscissorscrock.outcome).to eq(:playerlose)
    end

  end


end
