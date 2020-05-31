feature 'RPS App' do
  scenario 'player enters their name and sees their name after submitting' do
    enter_name_and_play
    expect(page).to have_content('Make your choice, Nikita.')
  end

  scenario 'player chooses an option from dropdown, and sees result' do
    enter_name_and_play
    select('Rock', from: 'choice')
    click_button('Play!')
    expect(page).to have_content('You chose rock.')
  end
end
