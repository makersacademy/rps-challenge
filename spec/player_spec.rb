require 'player'

describe Player do
  let(:name) { "Cynthia" }
  subject { described_class.new(name) } 

  context 'name' do
    it { is_expected.to respond_to(:name) }

    it 'has a name' do
      expect(subject.name).to eq name
    end
  end

  context '#move' do
    it { is_expected.to respond_to(:move) }

    it "can assign moves" do
      subject.move = "scissors"
      expect(subject.move).to eq "scissors"
    end
  end
end
