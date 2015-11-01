def register_and_play(player)
visit '/'
fill_in :player, with: player
click_button 'Register'
end
