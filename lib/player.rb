class Player
attr_reader :choice_log, :name
  def initialize(name)
    @choice_log = []
    @name = name
  end

  def pretty_log
    # choice_log.each_with_index do |choice, index|
    #   "#{index}: choice"
    # end
    choice_log.join(' ')
  end
end
