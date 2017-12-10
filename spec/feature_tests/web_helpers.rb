def visit_home
  visit '/home'
end

def sign_in
  fill_in 'name', with: 'TEST'
  click_button('Begin')
end

def choose_paper
  srand(1000)
  choose("pick", option: "PAPER")
  click_button('GO')
end
