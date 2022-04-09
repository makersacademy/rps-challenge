feature "Enter names" do
  scenario "Players enter their names and it prints it on the screen" do
    visit('/')
    fill_in('player_name', with: 'Jordan')
    click_button('Play!')
    expect(page).to have_content 'Jordan'
  end
end