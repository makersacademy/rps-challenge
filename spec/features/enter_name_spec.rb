feature 'Entering Names' do
  scenario 'can enter name' do
    start_game
    expect(page).to have_content('Rebecca vs. The Computer')
  end
end