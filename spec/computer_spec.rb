require 'computer'

describe Computer do
  context("on initialization") do
    subject(:computer) {Computer.new}
    it("name is Computer") do
      expect(computer.name).to eq "Computer"
    end

    it('provides a random choice for computer classic mode') do
      allow(Kernel).to receive(:rand).and_return(0)
      expect(computer.computer_choice("classic")).to eq :scissors
    end

    # it('provides a ramdom choice for computer spock mode') do
    #   allow(Kernel).to receive(:rand).and_return(4)
    #   expect(player.computer_choice("spock")).to eq :spock
    # end
  end
end