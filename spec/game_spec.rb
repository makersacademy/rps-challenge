require 'game'

describe Game do
  let(:comp_instance) { double :comp_instance, comp: "scissors" }
  subject { described_class.new("rock", comp_instance.comp) }

  it "stores the master's choice" do
    expect(subject.user2).to eq "scissors"
  end

  it 'declares the winner' do
    subject.result
    expect(subject.winner).to eq "wins!"
  end

  context 'works with lizard and spock' do
    let(:comp_instance) { double :comp_instance, comp: "spock" }
    subject { described_class.new("lizard", comp_instance.comp) }

    it 'declares that lizard wins' do
      # allow(comp_instance).to receive(:comp){"lizard"}
      subject.result
      expect(subject.winner).to eq "wins!"
    end
  end

end
