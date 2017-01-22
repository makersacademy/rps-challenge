require 'message_handler.rb'
require 'message_log.rb'

describe MessageHandler do

  let(:message_log) { instance_double("MessageLog") }

  describe "#message_handler_instance" do
    it "contains latest message handler instance" do
      new_message_handler = described_class.new(message_log: message_log)
      expect(new_message_handler.class.message_handler_instance).to eq new_message_handler
    end
  end

  subject(:message_handler) { described_class.new(message_log: message_log) }
  let(:player_1_name) { "Beast" }
  let(:player_2_name) { "Magneto" }
  let(:loser_name) { "Magneto" }
  let(:winning_move) { [:player_1, [:lizard, :spock, "poisons"]] }

  def message_log_can_return(message)
    allow(message_log).to receive(:add_message)
    allow(message_log).to receive(:messages) { [message] }
  end

  describe "#enter_game_message" do
    it "Adds enter game message to messages log" do
      message_text = "Beast and Magneto entered the game!"
      message_log_can_return(message_text)
      message_handler.enter_game_message(player_1_name, player_2_name)
      expect(message_log.messages.last).to eq message_text
    end
  end

  describe "#battle_result_message" do
    it "Adds enter game message to messages log" do
      message_text = "Beast's Lizard poisons Magneto's Spock!"
      message_log_can_return(message_text)
      message_handler.battle_result_message(winning_move, loser_name)
      expect(message_log.messages.last).to eq message_text
    end
  end

end
