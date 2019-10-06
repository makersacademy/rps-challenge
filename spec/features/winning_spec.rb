feature "Winning the game" do
  scenario 'can select to play again' do
    visit('/')
    fill_in :player_name, with: 'Olly'
    click_button "Let's go!"
    click_button 'Rock'
    expect(page).to have_button 'Play again'
  end
end