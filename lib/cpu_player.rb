class Cpu_player

attr_reader :cpu_choice

def initialize
	@options = [:rock, :paper, :scissors]
end

	def cpu_choice
    @options.sample
  end
end