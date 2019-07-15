

feature 'pick rps' do
  scenario 'rock, paper, scissors on screen when option selected' do
    visit('/')
    fill_in 'player_name', with: 'Genny'
    click_on 'Submit'
    select 'Rock', from: 'rps_choice'
    click_on 'Submit'
    expect(page).to have_content('You picked: Rock')
  end
end
