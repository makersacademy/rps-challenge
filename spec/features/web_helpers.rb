
def enter_players players
  players = [players] if players.is_a?(String)
  players.each_with_index do |player, i|
    fill_in "player_#{i}_name".to_sym, with: player
    click_button 'Add Player'
  end
  click_button 'Begin Game'
  end