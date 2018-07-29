feature 'Choose rock, paper, scissors' do
  before do
    visit('/')
    fill_in :player_name, with: 'Kirt'
    click_button 'Submit'
  end

  scenario 'choose rock' do
    choose('Rock')
    click_button 'Submit'
    expect(page).to have_content 'You picked Rock'
  end

  scenario 'choose paper' do
    choose('Paper')
    click_button 'Submit'
    expect(page).to have_content 'You picked Paper'
  end

  scenario 'choose scissors' do
    choose('Scissors')
    click_button 'Submit'
    expect(page).to have_content 'You picked Scissors'
  end
end
