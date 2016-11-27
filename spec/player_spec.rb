require 'spec_helper.rb'
require 'player'



describe Player do

let(:player)    {described_class.new(user_name)}
let(:user_name) {double (:user_name)}

  context "When player is initialized they" do

    it "have a name" do
      expect(player.name).to eq(user_name)
    end
  end

  context "When player calls the" do
    it "rock method, rock is assigned to choice" do
      player.rock
      expect(player.choice).to eq 0
    end

    it "scissors method, scissor is assigned to choice" do
      player.scissors
      expect(player.choice).to eq 2
    end

    it "paper method, paper is assigned to choice" do
      player.paper
      expect(player.choice).to eq 1
    end
  end








end
