feature 'game of rock, paper, scissors' do
  
  scenario 'player chooses move and is shown what they chose' do
    enter_name_start_game
    click_button('Rock')
    expect(page).to have_content "You chose Rock"
  end

end