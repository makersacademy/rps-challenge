require '././app/rps_app.rb'

feature 'Player and computer with same weapon' do
  scenario 'The result is a draw' do
    sign_in_and_play
    visit('/play')
    fill_in('choice', with: 'Scissors')
    allow_any_instance_of(Computer).to receive(:weapon).and_return(:scissors)
    click_button('Play')
    expect(page).to have_content('You used the same weapon')
  end
end
