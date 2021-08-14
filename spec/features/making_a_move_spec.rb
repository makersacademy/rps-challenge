require './app'

describe 'Making a Move', type: :feature do
  before(:each) do
    sign_in_and_start
  end

  it 'can choose rock' do
    choose 'Rock'
    expect(page).to have_field('Rock', checked: true)
  end

  it 'can choose paper' do
    choose 'Paper'
    expect(page).to have_field('Paper', checked: true)
  end

  it 'can choose scissors' do
    choose 'Scissors'
    expect(page).to have_field('Scissors', checked: true)
  end
  
  it 'allows user to submit their choice' do
    choose 'Scissors'
    click_button 'Choose'
    expect(page).to have_content "Bob has chosen"
  end
end
