feature 'Game screen' do
  before do
    ready_to_play
  end
  scenario 'the players name is displayed' do
    expect(page).to have_content "Choose wisely David!"
  end
  scenario 'there is an option for rock' do
    expect(page).to have_button 'Rock'
  end
  scenario 'there is an option for paper' do
    expect(page).to have_button 'Paper'
  end
  scenario 'there is an option for scissors' do
    expect(page).to have_button 'Scissors'
  end
  scenario 'there is an option for lizard' do
    expect(page).to have_button 'Lizard'
  end
  scenario 'there is an option for spock' do
    expect(page).to have_button 'Spock'
  end
end
