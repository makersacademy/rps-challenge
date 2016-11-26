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








end
