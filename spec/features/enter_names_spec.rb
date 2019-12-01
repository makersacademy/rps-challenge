feature 'enter name' do

  scenario "able to enter a name and confirmation given" do
    visit('/')
    fill_in "player1", with: 'Andrew'
    click_button 'PLAY!'
    expect(page).to have_content("Andrew - vs - Computer")
  end

end