feature "fill in players names" do
  scenario "players enter their names" do
    visit '/'
    fill_in :player_name, with: 'name1'
    click_button 'Submit'
    expect(page).to have_content 'name1'
  end
end
