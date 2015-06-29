class Paper

  include Comparable

  def to_sym
    :paper
  end

  def <=> other
    case other.to_sym
    when :paper   then  0
    when :scissor then -1
    when :rock    then  1
    else nil
    end
  end

end