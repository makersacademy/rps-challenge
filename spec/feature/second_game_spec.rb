feature 'Restart' do
  scenario 'Plays another round' do
    sign_in
    choose 'rock'
    expect(page).to have_checked_field('rock')
    click_button 'Submit'
    click_button 'Restart'
    choose 'paper'
    expect(page).to have_checked_field('paper')
    click_button 'Submit'
    click_button 'Restart'
    choose 'lizard'
    expect(page).to have_checked_field('lizard')
    click_button 'Submit'
    expect(page).to have_content('You have chosen Lizard')
  end
end
