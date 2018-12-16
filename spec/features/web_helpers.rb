def sign_in_and_play

 visit('/')
 fill_in 'name', with: 'Captain Jack'
 click_button 'Submit'
end

def scissors_options
  a = have_content("Computer choses rock: you lose")
  b = have_content("Computer choses scissors: you draw")
  c = have_content("Computer choses paper: you win")
  a.or(b).or(c)
end
