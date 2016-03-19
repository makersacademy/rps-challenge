feature 'view options' do
  scenario 'click rock link and see result' do
    register_and_play
    click_button 'rock'
    expect(page).to have_content "You chose Rock"
  end

  scenario 'click paper link and see result' do
    register_and_play
    click_button 'paper'
    expect(page).to have_content "You chose Paper"
  end

  scenario 'click scissors link and see result' do
    register_and_play
    click_button 'scissors'
    expect(page).to have_content "You chose Scissors"
  end

  scenario 'click link and see only one result' do
    register_and_play
    click_button 'paper'
    expect(page).to have_content "You chose Paper"
    expect(page).not_to have_content "You chose Rock"
    expect(page).not_to have_content "You chose Scissors"
  end
end
