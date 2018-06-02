feature "Register names" do
  scenario "add names to game" do
    visit('/')
    fill_in :player1_name, with: 'Chris'
    click_button 'Submit'
    expect(page).to have_content 'Chris'
  end
end
