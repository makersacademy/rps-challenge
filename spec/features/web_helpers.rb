def sign_in_and_play
  visit('/')
  fill_in('name1', with: "Tristan")
  click_on("submit")
end

def winning_play
  sign_in_and_play
  choose('rock')
  click_on('submit')
end

def sign_in_and_play_multiplayer
  visit('/')
  fill_in('name1', with: "Tristan")
  fill_in('name2', with: "Piers")
  click_on("submit")
end
