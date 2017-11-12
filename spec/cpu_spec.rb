require 'cpu.rb'

describe Cpu do

  context "When calling for a sign" do
    it 'Should return rock' do
      srand(0)
      expect(subject.choose_sign).to eq('rock')
    end

    it 'Should return paper' do
      srand(1)
      expect(subject.choose_sign).to eq('paper')
    end

    it 'Should return scissor' do
      srand(67809)
      expect(subject.choose_sign).to eq('scissor')
    end

    it "chooses a random sign" do
      expect(['rock','paper','scissor']).to include(subject.choose_sign)
    end
  end

  context "When asking for the sign" do
    it 'Should return rock' do
      srand(0)
      subject.choose_sign
      expect(subject.rock?).to eq(true)
    end

    it 'Should return paper' do
      srand(1)
      subject.choose_sign
      expect(subject.paper?).to eq(true)
    end

    it 'Should return scissor' do
      srand(67809)
      subject.choose_sign
      expect(subject.scissor?).to eq(true)
    end
  end

end
