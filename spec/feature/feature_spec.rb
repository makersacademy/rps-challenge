feature "Player sign in" do
  scenario "can enter a name" do
    visit('/')
    fill_in('player_name', with: 'Joe')
    click_button('OK')
    expect(page).to have_content('Hi Joe!')
  end
end
