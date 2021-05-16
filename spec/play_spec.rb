require 'play'

describe Play do
    
    subject(:play) { described_class.new(choices) }
    let(:choices) { {"name" => "JP", "choice" => :scissors, "machine_choice" => :rock } }

    describe 'name' do
        it 'stores the players name' do
            expect(play.name).to eq('JP')
        end
    end

    describe '#choice' do
        it 'shows the players choice' do
            expect(play.choice).to eq(:scissors)
        end
    end

    describe '#machine_choice' do
        it 'shows the machines choice' do
            allow(MachineChoice::CHOICES).to receive(:sample).and_return(:rock)
            expect(play.machine_choice).to eq(:rock)
        end
    end

    context 'finish the game' do

        subject(:win) { described_class.new(win_play) }
        subject(:loss) { described_class.new(loss_play) }
        subject(:draw) { described_class.new(draw_play) }

        subject(:win_play) { {"name" => "JP", "choice" => :scissors, "machine_choice" => :paper} }
        subject(:loss_play) { {"name" => "JP", "choice" => :rock, "machine_choice" => :paper} }
        subject(:draw_play) { {"name" => "JP", "choice" => :rock, "machine_choice" => :rock} }

        
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