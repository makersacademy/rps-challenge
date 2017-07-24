require 'game_text'

describe GameText do
  subject(:messager) { described_class.new }
  let(:player) { double('player', name: name_1) }
  let(:default_message_1) { "Choose from the above!" }
  let(:default_message_2) { "Get on with it m8" }
  let(:name_1) { 'Alex' }
  let(:name_2) { 'Bob' }
  let(:choice_1) { :paper }
  let(:choice_2) { :rock }
  let(:player_1_array) { [name_1, choice_1] }
  let(:player_2_array) { [name_2, choice_2] }

  describe '#initialize' do
    it 'begins with a default message for player 1' do
      expect(messager.player_1_text).to eq default_message_1
    end
    it 'begins with a default message for player 2' do
      expect(messager.player_2_text).to eq default_message_2
    end
  end

  describe '#update_round_winner' do
    it 'updates the winner of the round' do
      messager.update_round_winner(player)
      expect(messager.round_winner).to eq "#{player.name} wins the round!"
    end
  end

  describe '#reset' do
    before { messager.reset(player.name) }
    it 'changes player 1 text for new round' do
      expect(messager.player_1_text).to eq "#{player.name}'s turn!"
    end
    it 'changes player 2 text for new round' do
      expect(messager.player_2_text).to eq default_message_2
    end
  end

  describe '#waiting_for_player_2' do
    before { messager.waiting_for_player_2(name_1, name_2) }
    it "updates message to show that player 1 is waiting" do
      expect(messager.player_1_text).to eq "#{name_1} has chosen!"
    end
    it "updates messages to reflect that it is player 2's turn" do
      expect(messager.player_2_text).to eq "#{name_2}'s turn!"
    end
  end

  describe '#update_choice_messages' do
    before { messager.update_choice_messages(player_1_array, player_2_array) }
    it "updates messages confirming choices" do
      expect(messager.player_1_text).to eq "#{name_1} chooses #{choice_1.capitalize}!"
    end
    it "updates messages to reflect that it is player 2's turn" do
      expect(messager.player_2_text).to eq "#{name_2} chooses #{choice_2.capitalize}!"
    end
  end

end
