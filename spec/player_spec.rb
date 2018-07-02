require 'player'

describe Player do

  subject(:jenny) { described_class.new('Jenny') }

  describe '#name' do
    it 'returns its own name' do
      expect(jenny.name).to eq "Jenny"
    end
  end

  describe '#submit(choice)' do
    it 'returns its own name' do
      expect(jenny.submit_choice("Rock")).to eq :rock
    end
  end

  describe "#move" do
    it { should respond_to(:move) }
  end
end
