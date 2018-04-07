def test_page
   visit ('/')
end

def welcome
  visit ('/welcome')
end

def login
  welcome
  fill_in('player', with: 'Daniel')
  click_button('Submit')
end