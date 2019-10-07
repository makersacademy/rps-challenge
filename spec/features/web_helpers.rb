def register
  visit('/')
  click_link "Register"
  fill_in :email, with: 'guiheurich@gmail.com'
  fill_in :password, with: 'guilhe0756'
  click_button 'Register!'
end

def play
  choose('paper')
  click_button('Play!')
end

def login
  visit('/')
  click_link 'Log In'
  fill_in :email, with: 'guiheurich@gmail.com'
  fill_in :password, with: 'guilhe0756'
  click_button 'Let\'s Play!'
end
