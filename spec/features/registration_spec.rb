feature "Registration" do
  scenario "Registering with your name" do
    visit '/sessions/new'
    fill_in 'Name', with: 'Kay'
    click_button 'Register'
    expect(page).to have_content 'Your name is Kay'
  end
end
