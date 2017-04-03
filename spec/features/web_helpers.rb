def single_player_sign_in
  visit('/')
  click_button('Single Player')
  fill_in(:player_1_name, :with => 'Pedro')
  click_button('Submit')
end

def multiplayer_sign_in
  visit('/')
  click_button('Multiplayer')
  fill_in(:player_1_name, :with => 'Pedro')
  fill_in(:player_2_name, :with => 'Trish')
  click_button('Submit')
end

def possible_messages
  [:rock, :paper, :scissors].map { |shape| "Computer used #{shape.to_s.capitalize}" }
end
