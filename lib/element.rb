class Element

  attr_reader :name, :beats, :loses, :ties

  DEFAULT_NAME = "MISSING NAME".freeze
  DEFAULT_BEATS = "NOTHING"
  DEFAULT_LOSES = "NOTHING"
  DEFAULT_TIES = "NOTHING"

  def initialize(name = DEFAULT_NAME, beats = DEFAULT_BEATS, loses = DEFAULT_LOSES, ties = DEFAULT_TIES)
    @name = name
    @beats = beats
    @loses = loses
    @ties = ties
  end

end