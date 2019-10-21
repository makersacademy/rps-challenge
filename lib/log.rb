class Log

  attr_reader :log

  def add_success_to_log(style_of_attack)
    @log << "#{current_turn.name} has #{style_of_attack} #{opposite_of(current_turn).name}"
  end

  def add_fail_to_log(style_of_attack)
    @log << "#{opposite_of(current_turn).name} has attempted to #{style_of_attack} #{current_turn.name}. It has failed as it's #{current_turn.name}'s turn."
  end

  def add_failed_attempt_to_log(style_of_attack)
    @log << "#{opposite_of(current_turn).name} has failed to #{style_of_attack} #{current_turn.name}."
  end

  def add_cant_move_fail_to_log(style_of_attack)
    @log << "#{current_turn.name} has attempted to #{style_of_attack} #{opposite_of(current_turn).name}. It has failed as #{current_turn.name} cant move."
  end

end
