feature 'Announces winner' do
  scenario 'it shows when player wins' do
    fill_form
    page.select 'Rock', from: 'choice'
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    click_button 'Submit'
    expect(page).to have_content 'Mel wins!'
  end

  scenario 'it shows when computer wins' do
    fill_form
    page.select 'Paper', from: 'choice'
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    click_button 'Submit'
    expect(page).to have_content 'Computer wins!'
  end

  scenario 'it shows when outcome is a draw' do
    fill_form
    page.select 'Scissors', from: 'choice'
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    click_button 'Submit'
    expect(page).to have_content "It's a draw!"
  end

  scenario 'it shows the winner in a two player game' do
    fill_form_2_players
    page.select 'Rock', from: 'player_one_choice'
    click_button 'Submit'
    page.select 'Scissors', from: 'player_two_choice'
    click_button 'Submit'
    expect(page).to have_content 'Mel wins!'
  end

end
