class Card
  attr_reader :card_id
  attr_writer :card_number
  RANDOM_ID= Random.new(3)

  def initialize(card_id= RANDOM_ID)
    @card_id= card_id
    @card_number= card_number
  end

  def card_number
    number= ["rock", "paper", "scissor"].index(@card_id)
    @card_number= number+1
  end
end