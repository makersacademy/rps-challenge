require 'computer'

describe Computer do

  let(:computer) { described_class.new }

  describe "#generate_rand_option" do
    it "randomly selects an option out of rock/paper/scissors" do
      array = [:rock, :paper, :scissors]
      expect(array).to include(computer.generate_rand_option)
    end
  end

end
