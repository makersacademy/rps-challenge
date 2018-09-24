feature 'Mode' do
  scenario 'It shows the mode options' do
    visit('/')
    expect(page).to have_content('Mode')
  end
  scenario 'I can change the mode options' do
    visit('/')
    choose('spock')
    click_button('Change mode')
    expect(page).to have_content('Rock, Paper, Scissors, Lizard, Spock')
  end
  scenario 'I can choose from all 5 Spock options' do
    visit('/')
    choose('spock')
    click_button('Change mode')
    fill_in('name1', with: 'Skaiste')
    click_button('Start game against computer')
    click_button('spock')
    expect(page).to have_content('Skaiste chose spock')
  end
end
