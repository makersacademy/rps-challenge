feature 'test players names work' do
  scenario "Testing the player can input their name" do
    visit('/')
    fill_in :player_name, with: 'David'
    click_button('Submit')
    expect(page).to have_content 'Hello David, please click on an image below to select rock, paper or scissors.'
   end
 end
