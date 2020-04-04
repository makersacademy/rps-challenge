feature 'Play page loads' do

  scenario 'with option to choose Rock' do
    visit '/'
    click_button('Go!')
    expect(page).to have_button 'Rock'
  end

  scenario 'Rock returns rock as a weapon' do
    visit '/'
    click_button('Go!')
    click_button('Rock')
    expect(page).to have_content('Rock')
  end

  scenario 'with option to choose Paper' do
    visit '/'
    click_button('Go!')
    expect(page).to have_button 'Paper'
  end

  scenario 'Paper returns paper as a weapon' do
    visit '/'
    click_button('Go!')
    click_button('Paper')
    expect(page).to have_content('Paper')
  end

  scenario 'with option to choose Scissors' do
    visit '/'
    click_button('Go!')
    expect(page).to have_button 'Scissors'
  end

  scenario 'Scissors returns scissors as a weapon' do
    visit '/'
    click_button('Go!')
    click_button('Scissors')
    expect(page).to have_content('Scissors')
  end

end
