def sign_in_and_play
  visit('/')
  within('form') do
    fill_in 'player', with: :Trump
    find("input[value='Rock']").click
  end
  click_button 'Play'
end
