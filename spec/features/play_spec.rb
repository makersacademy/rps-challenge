feature 'Player has move options to choose from' do
  scenario 'User registers name and sees weapon options' do
    sign_in_and_submit
    expect(page).to have_content 'Select your weapon: '
  end

  scenario 'User chooses a move' do
    sign_in_and_submit
    select 'Rock', from: 'weapon'
    click_button('Play')
    expect(page).to have_content 'You chose rock!'
  end

end
