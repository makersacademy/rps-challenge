require 'message_handler.rb'
require 'message_log.rb'
require 'game.rb'

describe MessageHandler do

  context "message handler instance class variable" do
    let(:message_log) { instance_double("MessageLog") }
    let(:game) { instance_double("Game") }
    let(:player_1) { instance_double("Player") }
    let(:player_2) { instance_double("Player") }

    describe "#message_handler_instance" do
      it "contains latest message handler instance" do
        new_message_handler = described_class.new(message_log: message_log, game: game)
        expect(new_message_handler.class.message_handler_instance).to eq new_message_handler
      end
    end
  end

  context "standard instance tests" do
    let(:message_log) { instance_double("MessageLog") }
    let(:game) { instance_double("Game") }
    let(:player_1) { instance_double("Player") }
    let(:player_2) { instance_double("Player") }
    let(:winning_move) { [:player_1, [:lizard, :spock, "poisons"]] }
    subject(:message_handler) { described_class.new(message_log: message_log, game: game) }

    before(:each) do
      allow(game).to receive(:players) { { player_1: player_1, player_2: player_2 } }
      allow(player_1).to receive(:name) { "Beast" }
      allow(player_2).to receive(:name) { "Magneto" }
    end

    def message_log_can_return(message)
      allow(message_log).to receive(:add_message)
      allow(message_log).to receive(:messages) { [message] }
    end

    describe "#enter_game_message" do
      it "Adds enter game message to messages log" do
        message_text = "Beast and Magneto entered the game!"
        message_log_can_return(message_text)
        message_handler.enter_game_message
        expect(message_log.messages.last).to eq message_text
      end
    end

    describe "#battle_result_message" do
      it "Adds enter game message to messages log" do
        message_text = "Beast's Lizard poisons Magneto's Spock!"
        message_log_can_return(message_text)
        message_handler.battle_result_message(winning_move)
        expect(message_log.messages.last).to eq message_text
      end
    end

  end
end
