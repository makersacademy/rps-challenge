require 'twilio-ruby'

class TextClient
  def initialize
    @account_sid = ''
    @auth_token = ''
    @client = Twilio::REST::Client.new @account_sid, @auth_token
    @account = @client.api.account
  end

  def pull_texts
    @client.api.account.messages.list.map do |m|
        [m.body] if m.direction == 'inbound' 
    end.compact!.flatten
  end
end