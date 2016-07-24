require './app.rb'

feature 'Player can select a weapon' do
  scenario 'Player can select rock' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content('Jack used rock')
  end
  scenario 'Player can select scissors' do
    sign_in_and_play
    click_button 'scissors'
    expect(page).to have_content('Jack used scissors')
  end
  scenario 'Player can select paper' do
    sign_in_and_play
    click_button 'paper'
    expect(page).to have_content('Jack used paper')
  end
  scenario 'Player can select lizard' do
    sign_in_and_play
    click_button 'lizard'
    expect(page).to have_content('Jack used lizard')
  end
  scenario 'Player can select spock' do
    sign_in_and_play
    click_button 'spock'
    expect(page).to have_content('Jack used spock')
  end
end
