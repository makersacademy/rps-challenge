class Rock

  include Comparable

  def to_sym
    :rock
  end

  def <=> other
   case other
   when :paper   then -1
   when :scissor then  1
   when :rock    then  0
   else nil
  end

end