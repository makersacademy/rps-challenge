feature 'user chooses a move' do
  scenario 'user picks rock' do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content("Rock")
  end
end