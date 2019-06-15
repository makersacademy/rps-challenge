def sign_in_and_play
  visit '/'
  fill_in :name, with: "Tim"
  click_on 'submit'
  click_on 'play_game'
end
