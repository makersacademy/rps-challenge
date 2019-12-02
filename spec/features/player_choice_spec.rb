feature 'Player options' do
  scenario 'player sees buttons for rock paper scissors' do
    visit("/")
    fill_in(:name, with: "John")
    click_on('Submit')
    expect(page).to have_selector(:button, 'Rock')
    expect(page).to have_selector(:button, 'Paper')
    expect(page).to have_selector(:button, 'Scissors')
  end
end
