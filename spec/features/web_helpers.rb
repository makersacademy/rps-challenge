def sign_in_and_start_game
  visit('/')
  fill_in('name', with: 'Zaphod')
  click_on('Start game')
end

def make_move(rps)
  choose(rps)
  click_on('submit')
end
