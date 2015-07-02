module RulesOptions

  @@options = ["rock", "paper", "scissors"]
  @@rules = ["Rock blunts Scissors", "Scissors cuts Paper", "Paper wraps Rock"]

  def self.options
    @@options
  end

  def self.rules
    @@rules
  end

  def set_options(options)
    @@options = options
  end

  def set_rules(rules)
    @@rules = rules
  end

end
