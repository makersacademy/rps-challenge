PLAYER_NAME = 'Vale'
def sign_in_and_play
  visit('/')
  fill_in :player_name, with: PLAYER_NAME
  click_on 'Submit'
end

def opponent_choice(page)
  if page.has_content? 'Opponent chose ROCK'
    return 'ROCK'
  elsif page.has_content? 'Opponent chose PAPER'
    return 'PAPER'
  elsif page.has_content? 'Opponent chose SCISSORS'
    return 'SCISSORS'
  end
end
