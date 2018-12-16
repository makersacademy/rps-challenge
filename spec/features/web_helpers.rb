def sign_in_and_play

 visit('/')
 fill_in 'name', with: 'Captain Jack'
 click_button 'Submit'
end
