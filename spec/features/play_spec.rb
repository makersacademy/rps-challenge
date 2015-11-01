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
  scenario 'chooses rock for the computer opponent' do
    allow(Kernel).to receive(:rand) { 0.332 }
    enter_name_and_play
    click_link('rock.jpg')
    expect(page).to have_content 'Computer\'s choice: rock.'
  end
  scenario 'chooses paper for the computer opponent' do
    allow(Kernel).to receive(:rand) { 0.665 }
    enter_name_and_play
    click_link('rock.jpg')
    expect(page).to have_content 'Computer\'s choice: paper.'
  end
  scenario 'chooses scissors for the computer opponent' do
    allow(Kernel).to receive(:rand) { 0.999 }
    enter_name_and_play
    click_link('rock.jpg')
    expect(page).to have_content 'Computer\'s choice: scissors.'
  end
end
