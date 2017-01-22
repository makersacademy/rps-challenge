require 'message_log.rb'

describe MessageLog do

  describe "#message_log_instance" do
    it "contains latest message log instance" do
      new_message_log = described_class.new
      expect(new_message_log.class.message_log_instance).to eq new_message_log
    end
  end

  subject(:message_log) { described_class.new }

  it 'initializes with empty messages array' do
    expect(message_log.messages).to be_empty
  end

  describe "#add_message" do
    it "adds message to messages array" do
      message_log.add_message("message")
      expect(message_log.messages.last).to eq "message"
    end
  end

end
