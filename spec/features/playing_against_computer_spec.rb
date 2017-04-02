feature 'Playing against the computer' do
  scenario 'computer selects move after the user selects theirs' do
    single_player_sign_in
    click_button("Paper")
    expect(page).to have_content("Computer used")
  end
end
