feature 'game of rock, paper, scissors' do
  
  scenario 'player chooses move and is shown what they chose' do
    enter_name_start_game
    click_button('Rock')
    expect(page).to have_content "You chose Rock"
  end

  scenario 'computer has random choice that is shown on the screen' do
    enter_name_start_game
    click_button('Rock')
    expect(page).to have_content "Computer chose"
  end

end