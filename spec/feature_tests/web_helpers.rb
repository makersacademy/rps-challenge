def visit_home
  visit '/home'
end

def visit_battle
  visit '/battle'
end

def sign_in
  fill_in 'name', with: 'TEST'
  click_button('Begin')
end

def choose_paper
  
end
