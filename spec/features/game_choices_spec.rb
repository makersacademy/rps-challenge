feature 'game choices' do
  scenario 'rock beats scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    visit('/')
    fill_in(:player_1_name, with: 'Evita')
    click_button('Continue')
    choose('player_choice', option: 'rock')
    click_button('Play')
    expect(page).to have_content('You have won!')
  end
end
