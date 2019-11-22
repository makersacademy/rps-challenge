feature 'Result' do
  scenario 'result screen shows computers move' do
    enter_name_and_start_game
    click_button("Rock")
    expect(page).to have_content "Computer selected Paper!"
  end
end
