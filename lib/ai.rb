
  class Ai
    def initialize
      @choices = ["rock","paper","scissors"]
    end

    def random_choice
      @choices.sample
    end
  end