
feature "Starting game" do
  scenario 'starting game' do
    visit('/')
    fill_in :player, with: 'Slava'
    click_button 'Submit'
    expect(page).to have_content 'Slava vs. Computer'
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end