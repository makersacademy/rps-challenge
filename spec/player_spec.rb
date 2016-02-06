require './lib/player.rb'

describe Player do

  subject(:player){described_class.new}
  let(:rock){double :rock}
  let(:scissors){double :scissors}
  let(:paper){double :paper}

  describe '#choose_rock' do
    it '-> lets a player choose rock' do
      expect{player.choose_rock}.to change{player.selection}.from(nil).to(:rock)
    end
  end

  describe '#choose_paper' do
    it '-> lets a player choose paper' do
      expect{player.choose_paper}.to change{player.selection}.from(nil).to(:paper)
    end
  end

  describe '#choose_scissors' do
    it '-> lets a player choose scissors' do
      expect{player.choose_scissors}.to change{player.selection}.from(nil).to(:scissors)
    end
  end 
end
