require './app'

describe 'Making a Move', type: :feature do
  before(:each) do
    sign_in_and_start
  end

  it 'can choose rock' do
    choose 'choose_rock'
    expect(page).to have_field('choose_rock', checked: true)
  end

  it 'can choose paper' do
    choose 'choose_paper'
    expect(page).to have_field('choose_paper', checked: true)
  end
  
  it 'can choose scissors' do
    choose 'choose_scissors'
    expect(page).to have_field('choose_scissors', checked: true)
  end
  
  it 'allows user to submit their choice' do
    choose 'choose_scissors'
    click_button 'Choose'
    expect(page).to have_content "Bob has chosen Scissors"
  end
end
