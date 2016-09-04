require 'player'

describe Player do

  subject(:player_one) { described_class.new("Matthew")}

  describe '#initialize' do

    it 'should create a player with a name' do
      expect(subject.show_name).to eq "Matthew"
    end
  end


end
