class Computer
  OPTIONS = ['rock', 'paper', 'scissors']
  def self.choice
    OPTIONS[rand(3)]
  end
end
