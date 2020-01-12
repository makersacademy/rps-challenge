class GameLogic
  attr_reader :menu
  
  def initialize
    @menu = []
    p "so is it getting as far as loading the file?"
    @menu = self.load
    p "menu after load has been done"
    p @menu
  end

  def load(filename = './lib/RPSscores.json')
    @data = JSON.parse(File.read(filename))
    @menu = @data["RPS"]
  end

  def find_the_combination(player1_choice, player2_choice)
    @menu.each do |hash|
      return hash if (player1_choice == hash["play1"] && player2_choice == hash["play2"]) 
    end
  end
end
