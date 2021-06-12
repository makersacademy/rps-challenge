require 'player'

describe Player do
  let(:name) { "Cynthia" }
  subject { described_class.new(name) } 

  context 'name' do
    it { is_expected.to respond_to(:name) }
  end

  context '#move' do
    it { is_expected.to respond_to(:move) }

    it "can assign moves" do
      subject.move = "scissors"
      expect(subject.move).to eq "scissors"
    end
  end
end
