require 'player'

describe Player do

  subject(:rps_player) { described_class.new('rps_player') }

  context '#initialize' do
    it { is_expected.to respond_to :name }
  end

  context '#make_a_choice' do
    it "returns the player's choice" do
      subject.make_a_choice("rock")
      expect(subject.choice).to eq "rock"
    end

    it 'allows the computer to make a choice' do
      allow_any_instance_of(Array).to receive(:sample).and_return("paper")
      expect(subject.computer_choice).to eq "paper"
    end
  end

end
