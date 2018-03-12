class HandShape

  attr_reader :name, :beats, :verbs

  def initialize(name=nil, beats=nil, verbs=nil)
    @name = name
    @beats = beats
    @verbs = verbs
  end
end
