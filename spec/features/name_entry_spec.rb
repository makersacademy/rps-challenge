
feature "Welcome page" do

  scenario "Lets players fill in their names and start the game" do
    visit('/')
    fill_in :name_1, with: 'Dave'
    fill_in :name_2, with: 'Mittens'
    click_button 'start'
    expect(page).to have_content('Dave vs. Mittens')
  end

end
