require_relative '../../lib/game'
require_relative '../../lib/player'

describe Game do
  let(:player_inst){double("player_inst")}
  let(:player_class){double("player_class")}
  let(:npc_inst){double("npc_inst")}
  let(:npc_class_d){double("npc_class")}


  it "creates a new 'player' attribute during initialization" do
    expect(player_class).to receive(:new).with('Chuan Cheng').and_return(player_inst)
    newgame = Game.new(player_class, 'Chuan Cheng')
  end

  it "creates a new npc attribute during initialization" do
    expect(npc_class_d).to receive(:new).and_return(npc_inst)
    newgame = Game.new(player_class=Player, npc_class=npc_class_d, test=false, 'Chuan Cheng')
  end

  describe "#compare_move" do
    it "give correct result" do
      allow(npc_class_d).to receive(:new).and_return(npc_inst)
      allow(npc_inst).to receive(:move).and_return(0,2,1,0,2)
      newgame = Game.new(player_class=Player, npc_class=npc_class_d, test=false, 'Chuan Cheng')

      expect(newgame.compare_move(2)).to eq('lose')
      expect(newgame.compare_move(0)).to eq('win')
      expect(newgame.compare_move(1)).to eq('draw')
      expect(newgame.compare_move(1)).to eq('win')
      expect(newgame.compare_move(1)).to eq('lose')
    end
  end





end
