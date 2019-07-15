require 'rungame'

describe RunGame do

  let(:player_1) { double :player_1, :name => 'Tim', :weapon => :rock }
  let(:player_2) { double :player_2, :name => 'Ian', :weapon => :scissors }

  describe '#winner?' do
    it 'decides winner' do
      subject = RunGame.new(player_1, player_2)
      expect(subject.winner?).to eq "Tim has won!"
    end
  end

end
