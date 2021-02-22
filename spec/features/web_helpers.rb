
# def enter_players players
#   players = [players] if players.is_a?(String)
#   players.each_with_index do |player, i|
#     fill_in "player_#{i}_name".to_sym, with: player
#     click_button 'Add Player'
#   end
#   click_button 'Begin Game'
# end

def enter_1_player
  visit('/')
  fill_in "player_1_name", with: "Sargon of Akkad"
  click_button 'Begin Game'
end

def enter_2_players
  visit('/')
  fill_in :player_1_name, with: "Sargon of Akkad"
  check 'enable_player_2'
  fill_in :player_2_name, with: "Luh-ishan"
  click_button 'Begin Game'
end