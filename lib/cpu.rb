class Cpu
    attr_reader :options, :option

    def initialize
        @options = ['rock', 'paper', 'scissors']
        @option
    end

    def pick_random_option
        @option = @options.sample
    end

end