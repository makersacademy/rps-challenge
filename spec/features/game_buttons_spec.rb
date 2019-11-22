feature 'Game buttons' do
  scenario 'rock button pressed' do
    enter_name_and_start_game
    click_button("Rock")
    expect(page).to have_content "You selected Rock!"
  end
end
