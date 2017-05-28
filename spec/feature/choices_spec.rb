feature 'Player has different choices' do

  scenario 'Player can choose Rock' do
    visit('/')
    fill_in :player_name, with: 'Tim'
    click_button :Enter
    expect(page).to have_button('Rock')
  end

  scenario 'Player can choose Paper' do
    visit('/')
    fill_in :player_name, with: 'Tim'
    click_button :Enter
    expect(page).to have_button('Paper')
  end

  scenario 'Player can choose Scissors' do
    visit('/')
    fill_in :player_name, with: 'Tim'
    click_button :Enter
    expect(page).to have_button('Scissors')
  end

end
