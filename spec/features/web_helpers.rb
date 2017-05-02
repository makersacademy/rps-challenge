def sign_in_and_play
  visit('/')
  within('.main-form') do
    fill_in 'player', with: :Trump
    find("input[value='Rock']").click
  end
  click_button 'READY'
end

def sign_in_two_players_and_play
  visit('/')
  within('.main-form') do
    fill_in 'player', with: :Trump
    find("input[value='Rock']").click
    find("input[value='two_player']").click
  end
  click_button 'READY'
end
