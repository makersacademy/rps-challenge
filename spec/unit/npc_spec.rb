require 'npc'

describe NPC do
  let(:npc) { NPC.new }

  describe 'initialize' do
    it 'has a name' do
      expect(npc.name).to eq("Computer Player")
    end

    it 'selects a random option available from the rules' do
      srand(3)
      @choices = ["rock", "paper", "scissors"]
      rules = double("rules", choices: @choices)
      npc.make_choice(rules)
      expect(npc.choice).to eq("scissors")
    end
  end

end
