require 'player'

describe Player do
  subject { described_class.new("Yaz") }

  it 'exists' do
    player = Player.new("Yaz")
    expect(player).to be_an_instance_of Player
  end

  describe "#name" do
    it 'returns name of player' do
      expect(subject.name).to eq("Yaz")
    end
  end

  describe "#update_choice" do
    it { is_expected.to respond_to(:update_choice).with(1).argument }
    it 'updates choice of player' do
      subject.update_choice('Rock')
      expect(subject.choice).to eq('Rock')
    end
  end
end
