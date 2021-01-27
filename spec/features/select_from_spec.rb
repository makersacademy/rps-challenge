feature 'the player has a selection of weapons' do
  scenario 'the player can chose their own weapon' do
    enter_name_and_submit
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
  end
end
