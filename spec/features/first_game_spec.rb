require 'computer'

feature 'game of rock, paper, scissors' do
  let(:computer) { Computer.new.computers_turn }
  
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

  scenario 'game chooses a winner' do
    enter_name_start_game
    click_button('Rock')
    expect(page).to have_content "game"
  end

end