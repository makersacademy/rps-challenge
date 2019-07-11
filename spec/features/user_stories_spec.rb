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
  context 'The User choice is Rock, the computers choice is Paper:' do
    scenario 'Can click on button representing rock, and see my choice.' do
      visit_and_submit_name
      click_button 'Rock'
      expect(page).to have_text 'You have chosen Rock'
    end
    scenario "The computers choice ('Paper') is shown" do
      visit_and_submit_name
      srand(67808)
      click_button 'Rock'
      expect(page).to have_content("The computer has chosen Paper")
    end
    scenario "When you lose, the result is shown" do
      visit_and_submit_name
      srand(67808)
      click_button 'Rock'
      expect(page).to have_content('YOU HAVE LOST')
    end
    scenario "When you win, the result is shown" do
      visit_and_submit_name
      srand(67809)
      click_button 'Rock'
      expect(page).to have_content('YOU HAVE WON')
    end
    scenario "When you draw, the result is shown" do
      visit_and_submit_name
      srand(67807)
      click_button 'Rock'
      expect(page).to have_content('YOU HAVE DRAWN')
    end
  end
  scenario 'Can click on button representing paper, and see my choice.' do
    visit_and_submit_name
    click_button 'Paper'
    expect(page).to have_text 'You have chosen Paper'
  end
  scenario 'Can click on button representing scissors, and see my choice.' do
    visit_and_submit_name
    click_button 'Scissors'
    expect(page).to have_text 'You have chosen Scissors'
  end
  
end