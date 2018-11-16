feature 'user can register their name' do
  scenario 'displays the users name' do
    visit '/'
    fill_in "name", with: "Will"
    click_button "Play!"
    expect(page).to have_text "Welcome to Rock, Paper, Scissors Will!"
  end
end
