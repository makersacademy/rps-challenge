# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'I would like to register before playing.' do
  scenario "Enter player's name" do
    visit_fill_name
    expect(page).to have_text "Rock 👊🏼, PAPER ✋🏼, or Scissors ✌🏼? What is it gonna be Ian?"
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'I would like to play rock/paper/scissors.' do
  context 'Computer chooses paper' do
    scenario 'User chooses Rock and gives confirmation' do
      visit_fill_name
      click_button '👊'
      expect(page).to have_text 'You chose Rock'
    end
    scenario "The computers choice ('Paper') is shown" do
      visit_fill_name
      srand(1)
      click_button '👊'
      expect(page).to have_content("while your opponent chose Paper")
    end
    scenario "The result is shown if user loses." do
      visit_fill_name
      srand(10)
      click_button '👊'
      expect(page).to have_content('Pshh. Loser! 🙄')
    end
  end

  context 'Computer chooses scissors' do
    scenario "The result is shown if user wins." do
      visit_fill_name
      srand(3)
      click_button '👊'
      expect(page).to have_content('Yay! You have won! 👏🏼')
    end
  end

  context 'Computer chooses rock' do
    scenario "The outcome is shown if competition results to a draw." do
      visit_fill_name
      srand(2)
      click_button '👊'
      expect(page).to have_content("It's a draw! 🤝")
    end
  end


  scenario 'Can click on button representing paper, and see my choice.' do
    visit_fill_name
    click_button '✋🏼'
    expect(page).to have_text 'You chose Paper'
  end

  scenario 'Can click on button representing scissors, and see my choice.' do
    visit_fill_name
    click_button '✌🏼'
    expect(page).to have_text 'You chose Scissors'
  end
end
