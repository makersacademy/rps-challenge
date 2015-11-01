feature '/play' do
  scenario 'allows the player to choose rock' do
    enter_name_and_play
    click_link('rock.jpg')
    expect(page).to have_content 'playerX\'s choice: rock.'
  end
  scenario 'allows the player to choose paper' do
    enter_name_and_play
    click_link('paper.jpg')
    expect(page).to have_content 'playerX\'s choice: paper.'
  end
  scenario 'allows the player to choose scissors' do
    enter_name_and_play
    click_link('scissors.jpg')
    expect(page).to have_content 'playerX\'s choice: scissors.'
  end
end
