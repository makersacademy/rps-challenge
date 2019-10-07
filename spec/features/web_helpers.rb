def sign_in
  visit ('/')
  fill_in('player', with: 'Anu')
  click_button ('submit')
end

def click_rock
  choose('rock')
  click_button('submit')
end

def click_paper
  choose('paper')
  click_button('submit')
end

def click_scissor
  choose('scissor')
  click_button('submit')
end
