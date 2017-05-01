require'./app'

feature 'Announce Winner' do
  it "shows which player wins the game" do
    visit '/'
    fill_in :player_name, with: 'Sandy'
    click_button('Play!')
    select "Rock", from: "selection"
    click_button('RPS!')
    expect(page).to have_content('Wins') 
  end
end