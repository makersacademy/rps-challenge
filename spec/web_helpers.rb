def sign_in_and_play
  visit '/'

  fill_in('marketeer_name', with: 'Akram')
  click_button "Submit"
end
