describe 'User Stories' do
  before do
    visit '/'
    fill_in 'name', with: 'Andrew'
    click_button('Submit')
  end

  feature 'Sign in page' do

    scenario 'can enter name and it will be displayed' do
      expect(page).to have_content('Andrew')
    end

  end

  feature 'Decision page' do

    scenario 'displays RPS rules' do
      expect(page).to have_content('Rock beats Scissors')
      expect(page).to have_content('Scissors beats Paper')
      expect(page).to have_content('Paper beats Rock')
    end

    scenario 'can choose rock' do
      choose('rock')
      click_button('I have chosen')
      expect(page).to have_content('Andrew chooses rock')
    end

    scenario 'can choose paper' do
      choose('paper')
      click_button('I have chosen')
      expect(page).to have_content('Andrew chooses paper')
    end

    scenario 'can choose scissors' do
      choose('scissors')
      click_button('I have chosen')
      expect(page).to have_content('Andrew chooses scissors')
    end


  end

end
