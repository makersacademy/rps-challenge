
class ComputerPlayer

  def initialize
    @response_options = response_options = ['rock', 'paper', 'scissors']
  end

  def random_response
    @random_response =  @response_options.sample
  end

end
