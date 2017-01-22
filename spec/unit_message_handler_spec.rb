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

end
