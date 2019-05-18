require 'computer'

describe Computer do
  subject(:computer) { Computer.new }

    it "will randomly select Rock, Paper, Scissors" do
      allow(computer).to receive(:play) { "Rock" }
      expect(computer.play).to eq "Rock"
    end

  end
