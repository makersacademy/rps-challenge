
feature 'Enter name' do
  scenario 'player enters name' do
    sign_in_and_play
    expect(page).to have_content 'Hi Ellie!'
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
