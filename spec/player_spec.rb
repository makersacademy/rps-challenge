require "player"

describe Player do
  subject { Player.new('Tadas') }

  it "is initialized with a name" do
    expect(subject.name).to eq "Tadas"
  end

  describe '#select_attack' do
    it 'should select a given attack' do
      subject.select_attack(:scissors)
      expect(subject.attack).to eq :scissors
    end
  end
end
