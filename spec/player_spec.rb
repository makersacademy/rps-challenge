require 'game'

describe Player do

  it { expect(subject).to respond_to(:select_option).with(1).argument }
  it { expect(subject).to respond_to(:reset_choice) }

  describe '#select_option' do
    it 'returns choice if option defined' do
      option = "Paper"
      subject.select_option(option)
      expect(subject.choice).to eq("Paper")
    end
  end
  describe 'choice' do
    it 'returns nil if option not defined' do
      player = Player.new
      expect(player.choice).to eq(nil)
    end
  end
  describe '#reset_choice' do
    it 'returns nil as choice' do
      player = Player.new
      option = "Rock"
      subject.select_option(option)
      player.reset_choice
      expect(player.choice).to eq(nil)
    end
  end
end
