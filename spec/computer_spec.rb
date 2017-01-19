require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  context ".options" do

    it 'test that the array of possible answers are returned when called' do
      expect(Computer::OPTIONS).to eq [:Rock, :Paper, :Scissors]
    end
  end

  context ".choice" do

    it 'test that sample of the array is returned' do
      expect(computer.choice).to eq(:Rock).or(eq(:Scissors)).or(eq(:Paper))
    end
  end

end
