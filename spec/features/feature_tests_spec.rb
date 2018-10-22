feature 'Player' do
  scenario 'enters their name' do
    visit('/')
    fill_in :player_name, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Hello Dave. Please select rock, paper or scissors.'
  end

  scenario 'chooses a weapon' do
    visit('/')
    fill_in :player_name, with: 'Dave'
    click_button 'Submit'
    choose "Rock"
    click_button 'Submit'
    expect(page).to have_content 'Dave chose rock'
  end
end

feature 'Computer' do
  scenario 'chooses a weapon' do
    visit('/')
    fill_in :player_name, with: 'Dave'
    click_button 'Submit'
    choose "Rock"
    click_button 'Submit'
    expect(page).to have_content('The computer chose')
  end
end

feature 'Game' do
  scenario 'displays the result' do
    visit('/')
    fill_in :player_name, with: 'Dave'
    click_button 'Submit'
    choose "Rock"
    click_button 'Submit'
    expect(page).to have_content 'You win!'
  end
end
