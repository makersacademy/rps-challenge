feature 'Game buttons' do
  scenario 'rock button pressed' do
    enter_name_and_start_game
    click_button("Rock")
    expect(page).to have_content "Sam selected Rock!"
  end

  scenario 'paper button pressed' do
    enter_name_and_start_game
    click_button("Paper")
    expect(page).to have_content "Sam selected Paper!"
  end

  scenario 'scissors button pressed' do
    enter_name_and_start_game
    click_button("Scissors")
    expect(page).to have_content "Sam selected Scissors!"
  end
end
