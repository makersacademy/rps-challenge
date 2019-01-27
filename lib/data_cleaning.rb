# Cleaning Result Distribution
# Our chart has 3 bars at 100%, if aggregated outcomes exceed 300, increase divisor by *10 (just for viz)
# require_relative "./game"

# class DataCleaner
#   attr_reader :cw_clean, :dr_clean, :pw_clean
#   attr_accessor :divisor

#   # def initialize(cw , dr, pw)
#   #   @cw = $game.instance_variable_get(:@comp_wins)
#   #   @dr = $game.instance_variable_get(:@draws)
#   #   @pw = $game.instance_variable_get(:@player_wins)
#   #   @div = 1
#   # end  


#   def clean_barchart(cw, dr, pw)
#     @cw_clean = @cw_clean/@div
#     @dr_clean = @dr_clean/@div
#     @pw_clean = @pw_clean/@div
#     is_300?
#   end

#   def is_300?(cw, dr, pw)
#     (@cw_clean + @dr_clean + @pw_clean) >= 300 ? @div *= 10 :false 
#   end

#   def clean
#     @cw_clean
#     @dr_clean
#     @pw_clean
#   end
# end

