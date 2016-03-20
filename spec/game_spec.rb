require 'game'

describe Game do
  let(:test_game) {described_class.new dummy_p1 , dummy_p2}
  let(:dummy_p1) {double :human_player}
  let(:dummy_p2) {double :computer_player}
  let(:dummy_sign) {double :sign, to_sym: :dummy_sign}

  describe '#initialize' do

    it 'memorize player one correctly' do
      expect(test_game.player_one).to eq dummy_p1
    end

    it 'memorize player two correctly' do
      expect(test_game.player_two).to eq dummy_p2
    end

  end

  describe '#p_one_attack' do

    it 'memorize player one attack correctly' do
      test_game.p_one_attack dummy_sign
      expect(test_game.p_one_sign).to eq :dummy_sign
    end

  end

  describe '#p_two_attack' do

    it 'memorize player two attack correctly' do
      test_game.p_two_attack dummy_sign
      expect(test_game.p_two_sign).to eq :dummy_sign
    end

  end

  describe '#choose_winner' do

    it 'returns player_one when he is the winner' do
      test_game.p_one_attack 'paper'
      test_game.p_two_attack 'rock'
      expect(test_game.choose_winner).to eq dummy_p1
    end

    it 'returns player_one when he is the winner' do
      test_game.p_one_attack 'paper'
      test_game.p_two_attack 'lizard'
      expect(test_game.choose_winner).to eq dummy_p2
    end

    it 'returns :draw when there is no winner' do
      test_game.p_one_attack 'paper'
      test_game.p_two_attack 'paper'
      expect(test_game.choose_winner).to eq :draw
    end

    it 'raises an error when a wrong attack has been attempted' do
      test_game.p_one_attack 'bananas'
      expect {test_game.choose_winner}.to raise_error "wrong attack type"
    end

  end

end
