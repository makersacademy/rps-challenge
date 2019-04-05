feature 'Choosing an action' do
  scenario 'user can chose rock' do
    enter_name_and_play
    click_button 'Rock'
    expect(page).to have_content 'rock'
  end

  scenario 'user can chose paper' do
    enter_name_and_play
    click_button 'Paper'
    expect(page).to have_content 'Paper'
  end

  scenario 'user can chose scissors' do
    enter_name_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Scissors'
  end
end
