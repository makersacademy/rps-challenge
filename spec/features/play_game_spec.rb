feature 'play the game' do
  scenario 'selects and option and gets the result' do
    sign_in
    click_button "Rock"
    expect(page).to have_text("You won!")
  end
end
