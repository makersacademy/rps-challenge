require 'game'

RSpec.describe Game do
  let (:player_choice) { "Rock" }
  let (:computer_choice) { "Scissors" }
  subject { described_class.new(player_choice, computer_choice) }

  describe 'store choices' do
    it 'can store player and computer choices' do
      expect(subject.player_choice).to eq(player_choice)
      expect(subject.computer_choice).to eq(computer_choice)
    end
  end


end