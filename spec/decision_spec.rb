require 'decision'

describe Decision do

  subject(:prockcscissors) {described_class.new(:rock, :scissors)}
  subject(:prockcpaper) {described_class.new(:rock, :paper)}
  subject(:prockcrock) {described_class.new(:rock, :rock)}
  subject(:ppapercscissors) {described_class.new(:paper, :scissors)}
  subject(:ppapercpaper) {described_class.new(:paper, :paper)}
  subject(:ppapercrock) {described_class.new(:paper, :rock)}
  subject(:pscissorscscissors) {described_class.new(:scissors, :scissors)}
  subject(:pscissorscpaper) {described_class.new(:scissors, :paper)}
  subject(:pscissorscrock) {described_class.new(:scissors, :rock)}

  describe '#initialize' do

    it 'rock scissors outcome' do
      expect(prockcscissors.win).to be true
    end

    it 'rock paper outcome' do
      expect(prockcpaper.win).to be false
    end

    it 'rock rock outcome' do
      expect(prockcrock.win).to be false
    end

    it 'paper scissors outcome' do
      expect(ppapercscissors.win).to be false
    end

    it 'paper paper outcome' do
      expect(ppapercpaper.win).to be false
    end

    it 'paper rock outcome' do
      expect(ppapercrock.win).to be true
    end

    it 'scissors scissors outcome' do
      expect(pscissorscscissors.win).to be false
    end

    it 'scissors paper outcome' do
      expect(pscissorscpaper.win).to be true
    end

    it 'scissors rock outcome' do
      expect(pscissorscrock.win).to be false
    end

  end


end
