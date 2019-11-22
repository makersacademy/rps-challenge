feature 'choices' do
  scenario 'entering the choices of the player' do
    visit '/'
    fill_in :player_1_name, with: 'Rebecca'
    click_button 'Submit'
    fill_in :choice, with: 'ROCK'
    click_button 'Submit'
    expect(page).to have_content "You chose ROCK"
  end
end
