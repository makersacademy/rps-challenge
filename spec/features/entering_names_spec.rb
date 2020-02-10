feature 'entering name' do
  scenario 'able to enter a name' do
    visit('/')
    fill_in "player1", with: 'Mario'
    click_button "Submit"
    expect(page).to have_content("Mario vs. Luigi")
  end
end
