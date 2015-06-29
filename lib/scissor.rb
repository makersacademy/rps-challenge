class Scissor

  include Comparable

  def to_sym
    :scissor
  end

  def <=> other
    case other.to_sym
    when :paper   then   1
    when :scissor then   0
    when :rock    then  -1
    else nil
    end
  end

end