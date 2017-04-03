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
      expect(Decision.result(:rock, :scissors)).to eq :win
    end

    it 'rock paper outcome' do
      expect(Decision.result(:rock, :paper)).to eq :lose
    end

    it 'rock rock outcome' do
      expect(Decision.result(:rock, :rock)).to eq :draw
    end

    it 'paper scissors outcome' do
      expect(Decision.result(:paper, :scissors)).to eq :lose
    end

    it 'paper paper outcome' do
      expect(Decision.result(:paper, :paper)).to eq :draw
    end

    it 'paper rock outcome' do
      expect(Decision.result(:paper, :rock)).to eq :win
    end

    it 'scissors scissors outcome' do
      expect(Decision.result(:scissors, :scissors)).to eq :draw
    end

    it 'scissors paper outcome' do
      expect(Decision.result(:scissors, :paper)).to eq :win
    end

    it 'scissors rock outcome' do
      expect(Decision.result(:scissors, :rock)).to eq :lose
    end

  end


end
