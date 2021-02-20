feature 'rps game - player selection' do
  scenario 'player chooses option' do
    visit('/')
    click_button('one_player')
    visit('/one_player')
    expect(page).to have_content('Welcome to rock, paper, scissors!')
    fill_in('player_1_name', with: 'Sandy')
    click_button('Submit')
    visit('/one_player/choice')
    expect(page).not_to have_content('Welcome to rock, paper, scissors!')
    expect(page).to have_content('Ready to play Sandy?')
    expect(page).to have_content('Make your choice:')
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
    click_button('Rock')
  end
end
