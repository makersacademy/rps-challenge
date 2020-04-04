feature 'Choose between Rock, Paper, Scissors' do
  scenario 'Dave choose rock, see rock' do
    visit '/'
    fill_in('name', with: 'Dave')
    click_button('Go!')
    click_button('Rock')
    expect(page).to have_content 'Dave: Rock'
  end

  scenario 'Dave choose paper, see paper' do
    visit '/'
    fill_in('name', with: 'Dave')
    click_button('Go!')
    click_button('Paper')
    expect(page).to have_content 'Dave: Paper'
  end

  scenario 'Jim choose scisors, see scissors' do
    visit '/'
    fill_in('name', with: 'Jim')
    click_button('Go!')
    click_button('Scissors')
    expect(page).to have_content 'Jim: Scissors'
  end
end
