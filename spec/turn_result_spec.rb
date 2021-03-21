require 'turn_result'

describe Turn_Result do

  context 'the game result' do
    let(:test_turn_win) { { :player_1_name => "Cadbury", :weapon => "Slicing Scissors", :pc_weapon => "Powerful Paper"} }
    let(:test_turn_lose) { { :player_1_name => "Cadbury", :weapon => "Rocking Rock", :pc_weapon => "Powerful Paper"} }
    let(:test_turn_draw) { { :player_1_name => "Cadbury", :weapon => "Powerful Paper", :pc_weapon => "Powerful Paper"} }

    describe '#win?' do
      it 'returns true if player beats computer' do
        expect(test_turn_win.win?).to eq true
      end
    end

      describe '#lose?' do
        it 'returns true if player loses to computer' do
          expect(test_turn_lose.lose?).to eq true
        end
      end

      describe '#draw?' do
        it 'returns true if player drew with computer' do
          expect(test_turn_draw.draw?).to eq true
        end
      end
    end
  end
