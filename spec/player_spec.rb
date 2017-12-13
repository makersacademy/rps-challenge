require './lib/player.rb'

describe Player do
  let(:subject) { Player.new('Marco') }
  describe '#choose_rock' do
    it "Check if after calling choose_rock the @sign instance variable change its value to :rock" do
      subject.choose_rock
      expect(subject.sign).to eq(:rock)
    end
  end
  describe '#choose_scissor' do
    it "Check if after calling choose_rock the @sign instance variable change its value to :scissor" do
      subject.choose_scissor
      expect(subject.sign).to eq(:scissor)
    end
  end
  describe '#choose_paper' do
    it "Check if after calling choose_rock the @sign instance variable change its value to :paper" do
      subject.choose_paper
      expect(subject.sign).to eq(:paper)
    end
  end
end
