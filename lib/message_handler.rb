class MessageHandler

  @message_handler_instance = nil

  def initialize(message_log:)
    @message_log = message_log
    self.class.message_handler_instance = self
  end

  def self.message_handler_instance
    @message_handler_instance
  end

  def self.message_handler_instance=(value)
    @message_handler_instance = value
  end


end
