class Card
  attr_reader :card_number, :card_id
  RANDOM_ID= rand(1..3)

  def initialize(card_number= RANDOM_ID)
    @card_number= card_number
    @card_id= card_id
  end

  def card_id
    idx= @card_number.to_i 
    @card_id= ["rock", "paper", "scissor"].at(idx-1)
  end
end