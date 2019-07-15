
feature 'random rps' do
  scenario 'the opponent\'s rps choice appears on screen' do
    visit('/')
    fill_in 'player_name', with: 'Genny'
    click_on 'Submit'
    select 'Rock', from: 'choice'
    click_on 'Submit'

    expect(page).to have_content('Your opponent picked: Scissors')
  end
end
