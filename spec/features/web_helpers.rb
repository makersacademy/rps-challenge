def sign_in_and_play
  visit '/'
  fill_in :name, with: 'Rocky'
  click_on 'Submit'
end
