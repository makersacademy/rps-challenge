require 'app'

feature '/result' do
  scenario 'shows the users name' do
    visit '/'
    fill_in 'player_name', with: 'Adam'
    select 'rock', from: 'weapon'
    click_button 'Submit'
    expect(page).to have_content 'Adam'
  end

  scenario 'shows the users choice of Rock, Paper, Scissors' do
    visit '/'
    fill_in 'player_name', with: 'Adam'
    select 'rock', from: 'weapon'
    click_button 'Submit'
    expect(page).to have_content 'you chose rock'
  end

  scenario 'shows the computers choice' do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    visit '/'
    fill_in 'player_name', with: 'Adam'
    select 'rock', from: 'weapon'
    click_button 'Submit'
    expect(page).to have_content 'Your opponent randomly chose paper'
  end
end
