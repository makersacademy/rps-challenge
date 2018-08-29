feature 'Enter name' do
  scenario 'can enter name' do
    sign_in_and_play
    expect(page).to have_content 'Hi Josh!'
  end
end

feature 'Select Rock/Paper/Scissors' do
  before { sign_in_and_play }
  scenario { 
    click_on 'Rock' 
    expect(page).to have_content 'You picked Rock'
  }
  scenario { 
    click_on 'Paper' 
    expect(page).to have_content 'You picked Paper'
  }
  scenario { 
    click_on 'Scissors' 
    expect(page).to have_content 'You picked Scissors'
  }
end

feature 'Game winner' do
  before { sign_in_and_play }
  scenario 'Game has winner' do
    click_on 'Scissors' 
    click_link 'Go!'
    expect(page).to have_content 'Game Over'
  end
end
