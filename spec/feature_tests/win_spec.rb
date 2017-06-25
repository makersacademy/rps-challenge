require '././app/rps_app.rb'

feature 'Player winning' do
  scenario 'The result is victory' do
    sign_in_and_play
    visit('/play')
    fill_in('choice', with: 'Scissors')
    allow_any_instance_of(Computer).to receive(:weapon).and_return(:paper)
    click_button('Play')
    expect(page).to have_content('You won')
  end
end
