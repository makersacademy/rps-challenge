# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'User Story 1: So I can see my name, I would like to register it before playing.' do
  scenario 'Can enter and see name.' do
    visit_and_submit_name
    expect(page).to have_text 'Welcome to XTREME-RPS Toby'
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'User Story 2: So I can enjoy myself, I would like to play rock/paper/scissors.' do
  scenario 'Can click on button representing rock, and land on a working page.' do
    visit_and_submit_name
    click_button 'Rock'
    expect(page.status_code).to eq(200)
  end
  scenario 'Can click on button representing paper, and land on a working page.' do
    visit_and_submit_name
    click_button 'Paper'
    expect(page.status_code).to eq(200)
  end
  scenario 'Can click on button representing scissors, and land on a working page.' do
    visit_and_submit_name
    click_button 'Scissors'
    expect(page.status_code).to eq(200)
  end
end