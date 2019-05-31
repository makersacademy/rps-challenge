def sign_in_and_play

  visit '/enter_name'
  fill_in :player_name, with: 'Manisha'
  click_button "Sign in"

end