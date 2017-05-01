# require_relative '../../app'
require'./app'

feature 'Create Player' do
  it "enters a player's name" do
    visit '/'
    fill_in :player_name, with: 'Sandy'
    click_button('Play!')
    expect(page).to have_content('Sandy')  
  end
end