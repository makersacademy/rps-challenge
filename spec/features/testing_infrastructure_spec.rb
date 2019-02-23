feature 'test home page is working' do
  scenario 'home page shows text' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors'
  end
end

feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in('player_name', with: 'Lizzie')
    click_button 'Submit'
    expect(page).to have_content 'Hi, Lizzie'
  end
end

feature 'Choose a move' do

  before(:each) do
    visit('/')
    fill_in('player_name', with: 'Lizzie')
    click_button 'Submit'
  end

  scenario 'choose rock' do
    click_button 'Rock'
    expect(page).to have_content 'You won'
  end

  scenario 'choose paper' do
    click_button 'Paper'
    expect(page).to have_content 'You won'
  end

  scenario 'choose scissors' do
    click_button 'Scissors'
    expect(page).to have_content 'You won'
  end

end
