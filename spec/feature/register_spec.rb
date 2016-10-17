feature 'Enter Name' do
  scenario 'Can submit a name' do
    visit "/"
    fill_in :player1, with: 'Katy'
    click_button "Play"
    expect(page).to have_content "Katy vs. Computer"
  end
end
