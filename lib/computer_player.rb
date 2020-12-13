class ComputerPlayer < Player
  def choice
    @choice ||= CHOICES.sample
  end
end
