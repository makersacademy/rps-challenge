describe "Add a player", type: :feature do
  it "accepts a player name in a form" do
    visit '/'
    fill_in('player_1', with: 'Dwayne Johnson')
    click_button('Submit')
    expect(page).to have_content 'Dwayne Johnson V Computer'
  end
end
