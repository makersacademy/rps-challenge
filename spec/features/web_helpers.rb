def sign_in_and_play
  visit "/"
  fill_in :player_name, with: "Amanda"
  click_button("Play!")
end

def choose_rock_and_win
  allow(Game::WEAPONS).to receive(:sample).and_return(:scissors)
  sign_in_and_play
  click_button("Rock")
end

def choose_rock_and_lose
  allow(Game::WEAPONS).to receive(:sample).and_return(:paper)
  sign_in_and_play
  click_button("Rock")
end

def choose_rock_and_draw
  allow(Game::WEAPONS).to receive(:sample).and_return(:rock)
  sign_in_and_play
  click_button("Rock")
end
