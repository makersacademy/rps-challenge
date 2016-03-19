class Computer
  CHOICES = [:rock,:paper,:scissors]

  def result(player_choice)
    # return :draw if choice == player_choice
    if @choice == :rock
      if player_choice.to_sym == :scissors
        :win
      elsif player_choice.to_sym == :paper
        :lose
      end
    end


  end

  def choice
    @choice =  CHOICES[rand(0..2)]
  end




end

p Computer.new.result('paper')
p Computer.new.result('scissors')
