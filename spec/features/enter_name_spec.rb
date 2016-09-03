feature "Player name" do
  scenario "Enter a players name" do
    visit '/'
    fill_in :player1, with: 'Murtz'
    click_button 'submit'
    expect(page).to have_content('Murtz vs. computer')
  end
end
