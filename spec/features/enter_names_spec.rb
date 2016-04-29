feature 'Enter names', :type => :feature do
  scenario 'one player' do
    visit('/')
    click_button("one")
    fill_in :player_1_name, with: "Sergio"
    click_button("Submit")
    expect(page).to have_content "Sergio"
  end

  scenario 'multiplayer' do
    visit('/')
    click_button("two")
    fill_in('player_1_name', with: "Sergio")
    fill_in('player_2_name', with: "Paco")
    click_button("Submit")
    expect(page).to_not have_content 'Computer'
    expect(page).to have_content "Sergio"
    expect(page).to have_content "Paco"
  end
end
