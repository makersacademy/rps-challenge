require 'game'

describe Game do
  let(:comp_instance) { double :comp_instance, comp: "scissors" }
  subject { described_class.new("rock", comp_instance) }

  it "stores the master's choice" do
    expect(subject.computer.comp).to eq "scissors"
  end

  it 'declares the winner' do
    # allow(comp).to receive(:comp){"scissors"}
    subject.result
    expect(subject.winner).to eq "You win!"
  end
end
