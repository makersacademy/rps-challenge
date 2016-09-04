require 'player'

describe Player do

  subject(:zak) {Player.new('Zak')}

  describe "#name" do
    it 'returns the name' do
     expect(zak.name).to eq "Zak"
    end
  end

  describe "#rock" do
    it 'sets player choice to rock' do
      zak.rock
      expect(zak.player_choice).to eq 'rock'
    end
    it 'sets player value to 0' do
      zak.rock
      expect(zak.player_value).to eq 0
    end
  end

  describe "#paper" do
    it 'sets player choice to paper' do
      zak.paper
      expect(zak.player_choice).to eq 'paper'
    end
    it 'sets player value to 1' do
      zak.paper
      expect(zak.player_value).to eq 1
    end
  end

  describe "#scissors" do
    it 'sets player choice to scissors' do
      zak.scissors
      expect(zak.player_choice).to eq 'scissors'
    end
    it 'sets player value to 2' do
      zak.scissors
      expect(zak.player_value).to eq 2
    end
  end

end
