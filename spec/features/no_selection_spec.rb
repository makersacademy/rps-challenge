feature "no selection made for a game choice" do
  scenario "routes back to play when no selection made and play pressed" do
    visit_and_sign_on
    click_button('Play')
    expect(page).to have_content 'Bob, are you ready to play?'
  end
end