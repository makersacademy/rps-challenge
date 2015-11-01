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
  scenario 'player = rock & computer = paper displays computer wins msg' do
    allow(Kernel).to receive(:rand) { 0.665 }
    enter_name_and_play
    click_link('rock.jpg')
    expect(page).to have_content 'Computer wins!'
  end
  scenario 'player = paper & computer = scissors displays computer wins msg' do
    allow(Kernel).to receive(:rand) { 0.999 }
    enter_name_and_play
    click_link('paper.jpg')
    expect(page).to have_content 'Computer wins!'
  end
  scenario 'player = scissors & computer = rock displays computer wins msg' do
    allow(Kernel).to receive(:rand) { 0.332 }
    enter_name_and_play
    click_link('scissors.jpg')
    expect(page).to have_content 'Computer wins!'
  end
end
