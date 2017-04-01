require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  it 'has a list of choices' do
    expect(computer.choices).not_to be_empty
  end

  describe '#pick' do
    it "returns computer's choice" do
      expect(computer.choices).to receive(:sample)
      computer.pick
    end
  end

  # describe '.set_instance' do
  #   it 'creates a new computer' do
  #     expect(described_class.set_instance).to be_instance_of described_class
  #   end
  # end
end
