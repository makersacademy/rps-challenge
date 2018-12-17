def sign_in_and_submit
  visit '/'
  fill_in('name', with: "An")
  click_button('submit')
end

def click_rock_and_submit
  choose('rock')
  click_button('submit')

end

def click_paper_and_submit
  choose('paper')
  click_button('submit')
end

def click_scissors_and_submit
  choose('scissors')
  click_button('submit')
end
