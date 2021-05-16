require 'play'

describe Play do

  subject(:play) { described_class.new(choices) }
  let(:choices) { { "name" => "Dev", "choice" => :scissors } }

  describe 'name' do
    it 'saves a players name' do
      expect(play.name).to eq("Dev")
    end
  end

  describe 'choice' do
    it 'saves a players choice' do
      expect(play.choice).to eq(:scissors)
    end
  end

  context 'finish the game' do

    subject(:win) { described_class.new(win_play) }
    subject(:loss) { described_class.new(loss_play) }
    subject(:draw) { described_class.new(draw_play) }

    subject(:win_play) { {"name" => "Dev", "choice" => :scissors, "comp_choice" => :paper} }
    subject(:loss_play) { {"name" => "Dev", "choice" => :rock, "comp_choice" => :paper} }
    subject(:draw_play) { {"name" => "Dev", "choice" => :rock, "comp_choice" => :rock} }

    
    describe '#draw?' do
        it 'returns true when both options are the same' do
            expect(draw.draw?).to eq(true)
        end
    end

    describe '#win?' do
        it 'returns true when the player choice beats the machine choice' do
            expect(win.win?).to eq(true)
        end
    end

    describe '#lose?' do
        it 'returns true when the player losses to the machine' do
            expect(loss.lose?).to eq(true)
        end
    end

end
  

end
