require_relative 'game'
require_relative 'player'

class Trump

attr_reader :weapon_choice

  def initialize
    @weapon_choice
  end

CHOICES = [:rock, :paper, :scissors]

  def choose_weapon
    @weapon_choice = random_selection
  end

  def brag
    BRAGS.sample
  end

  def whinge
    WHINGES.sample
  end

  def complain_about_draw
    COMPLAINTS.sample
  end

# private

  def random_selection
    CHOICES.sample
  end

  def announce_choice
    "I pick #{@weapon_choice}. They're Trump #{@weapon_choice}. I have the best #{@weapon_choice}."
  end

BRAGS = ["I won! I won! I'm the best! You're a waste of space!",
      "I feel sorry for you, I really do.",
      "Why are you even trying to beat me?"]

WHINGES = ["WHAT?! You won 'cos you're a cheating scumbag",
        "I'm gonna lock you up!",
        "WHAT?! The wall between me and you just got 3 feet higher!"]

COMPLAINTS = ["Are you kidding? I drew with this creep?",
      "Oh, a draw, I'll give you a draw. HERE'S your draw",
      "The only reason you even DREW with me was because the Russians hacked into my brain and sold you the information."]



end
