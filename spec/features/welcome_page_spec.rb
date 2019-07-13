
feature "welcome page" do
  scenario "player enters their name into the text field and hits Play!" do
    visit('/')
    fill_in 'name', with: 'Harry'
    click_button('Play!')
    expect(page).to have_content('Welcome to rock paper scissors, Harry!')
  end
end
