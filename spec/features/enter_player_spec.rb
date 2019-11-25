feature 'Player name entry', :type => :feature do
  scenario 'User creates a new Player name' do
    visit('/welcome')
    fill_in :names, :with => "Vince"
    click_button "Submit"
    expect(page).to have_content "Vince"
  end
end

feature 'Player selects an item to duel', :type => :feature do
  scenario 'User chooses their item' do
    visit('/player_move')
      choose 'Rock'
      click_button "Fight!"
    expect(page).to have_content "You have selected Rock"
  end
end
