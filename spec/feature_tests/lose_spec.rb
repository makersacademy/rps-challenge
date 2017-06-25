require '././app/rps_app.rb'

feature 'Player losing' do
  scenario 'The result is loss' do
    sign_in_and_play
    visit('/play')
    fill_in('choice', with: 'Scissors')
    allow_any_instance_of(Computer).to receive(:weapon).and_return(:rock)
    click_button('Play')
    expect(page).to have_content('You lose')
  end
end
