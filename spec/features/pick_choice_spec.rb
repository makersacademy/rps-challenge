feature 'Selecting choice' do
  scenario 'Player can select Rock' do
    fill_form
    page.select 'Rock', from: 'choice'
    click_button 'Submit'
    expect(page).to have_content 'Mel chose rock'
  end

  scenario 'Player can select Paper' do
    fill_form
    page.select 'Paper', from: 'choice'
    click_button 'Submit'
    expect(page).to have_content 'Mel chose paper'
  end

  scenario 'Player can select Scissors' do
    fill_form
    page.select 'Scissors', from: 'choice'
    click_button 'Submit'
    expect(page).to have_content 'Mel chose scissors'
  end

  scenario 'Player one chooses first in two player game' do
    fill_form_2_players
    expect(page).to have_content 'Mel, what is your move?'
  end

  scenario 'Player two chooses second in two player game' do
    fill_form_2_players
    page.select 'Rock', from: 'player_one_choice'
    click_button 'Submit'
    expect(page).to have_content 'Aimee, what is your move?'
  end
end
