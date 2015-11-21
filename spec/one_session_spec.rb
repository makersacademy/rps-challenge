require './lib/one_session.rb'

describe OneSession do

  subject(:round) {described_class.new(options)}
  let(:name) {"BoredPerson"}
  let(:options){{"name" => "BoredPerson", "player_choice" => :rock, "computer_choice" => :scissors}}
  # before do
  #   allow(subject).to receive(:option).and_return :rock
  # end

  describe '#player_name' do
    it 'returns player name' do
      expect(round.name).to eq('BoredPerson')
    end
  end

  describe '#player_choice' do
    it 'returns chosen option' do
      expect(round.player_choice).to eq(:rock)
    end
  end

  describe '#computer_choice' do
    it 'returns computer\'s option' do
      expect(round.computer_choice).to eq :scissors
    end
  end

  context 'result of game' do
    subject(:win_round) {round}
    subject(:lose_round) {described_class.new(lose_options)}
    subject(:draw_round) {described_class.new(draw_options)}

    let(:draw_options){{"name" => "BoredPerson", "player_choice" => :rock, "computer_choice" => :rock}}
    let(:lose_options){{"name" => "BoredPerson", "player_choice" => :rock, "computer_choice" => :paper}}
      describe '#win?' do
        it 'returns true if player_choice is :rock and opponent_shape is :scissors' do
            expect(win_round.win?).to eq true
        end
      end
      describe '#lose?' do
        it 'returns true if player_choice is :rock and opponent_shape is :paper' do
            expect(lose_round.lose?).to eq true
        end
      end
      describe '#draw?' do
        it 'returns true if player_choice is :rock and opponent_shape is :rock' do
            expect(draw_round.draw?).to eq true
        end
      end
  end
end
