def sign_in_and_play
  visit '/two_player'
  fill_in :name1, with: 'Dave'
  fill_in :name2, with: 'Barry'
  click_on 'Submit'
end

def sign_in_and_play_single
  visit '/single_player'
  fill_in :name1, with: 'Dave'
  fill_in :name2, with: 'Barry'
  click_on 'Submit'
end
