class Random

  OPTION = ['rock', 'paper', 'scissors']

  def self.chlg
    OPTION[rand(0..2)]
  end

end
