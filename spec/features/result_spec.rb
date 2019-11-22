feature 'Result' do
  scenario 'result screen shows computers move' do
    enter_name_and_start_game
    srand(4)
    click_button("Rock")
    expect(page).to have_content "Computer selected Scissors!"
  end

  scenario 'result view shows winner' do
    enter_name_and_start_game
    srand(4)
    click_button("Rock")
    expect(page).to have_content "Sam wins!"
  end

  scenario 'a draw' do
    enter_name_and_start_game
    srand(4)
    click_button("Scissors")
    expect(page).to have_content "Draw!"
  end
end
