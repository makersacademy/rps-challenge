class MessageLog

  attr_reader :messages

  @message_log_instance = nil

  def initialize
    @messages = []
    self.class.message_log_instance = self
  end

  def self.message_log_instance
    @message_log_instance
  end

  def self.message_log_instance=(value)
    @message_log_instance = value
  end

  def add_message(message)
    @messages << message
  end
end
