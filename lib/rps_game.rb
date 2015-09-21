require_relative 'rps_rules'

class RpsGame

  @rules = RpsRules
  @setup = { player: 'Player', scores: [0,0], player_weapon: 'Rock',
             computer_weapon: 'Rock', extended: false }
  @results = { winner: nil, report: 'Rock meets Rock' }

  class << self
    attr_reader :setup, :results, :rules
    private
    attr_writer :rules
  end

  def self.reset_scores
    setup[:scores] = [0,0]
  end

  def self.choose_player(name)
    setup[:player] = name
  end

  def self.choose_player_weapon(choice)
    setup[:player_weapon] = choice
  end

  def self.choose_computer_weapon
    setup[:computer_weapon] = weapons.sample
  end

  def self.weapons
    rules.weapons
  end

  def self.enable_extended(flag)
    setup[:extended] = flag
    rules.extend(flag)
  end

  def self.play
    weapon1 = setup[:player_weapon]
    weapon2 = setup[:computer_weapon]
    message1 = rules.check(weapon1, weapon2)
    message2 = rules.check(weapon2, weapon1)
    write_report(weapon1, weapon2, message1, message2)
    update_scores(results[:winner])
    results
  end

  # private class methods

  def self.write_report(weapon1, weapon2, message1, message2)
    if message1
      report setup[:player], "#{weapon1} #{message1} #{weapon2}"
    elsif message2
      report 'Computer', "#{weapon2} #{message2} #{weapon1}"
    else
      report nil, "#{weapon1} meets #{weapon2}"
    end
  end

  def self.report(name, message)
    results[:winner] = name
    results[:report] = message
  end

  def self.update_scores(winner)
    setup[:scores][0] += (winner == setup[:player] ? 1 : 0)
    setup[:scores][1] += (winner == 'Computer' ? 1 : 0)
  end

  private_class_method :write_report, :report, :update_scores

end
