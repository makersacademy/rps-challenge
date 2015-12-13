describe 'User Stories' do
  before do
    visit '/'
    fill_in 'name', with: 'Andrew'
    click_button('Submit')
  end

  feature 'Sign in page' do

    scenario 'can enter name and it will be displayed' do
      page.should have_content('Andrew')
    end

    end

    feature 'Decision page' do

    scenario 'displays RPS rules' do
      page.should have_content('Rock beats Scissors')
      page.should have_content('Scissors beats Paper')
      page.should have_content('Paper beats Rock')
    end

    scenario 'can choose rock' do
      choose('rock')
      click_button('I have chosen')
      page.should have_content('You choose rock')
    end

    scenario 'can choose paper' do
      choose('paper')
      click_button('I have chosen')
      page.should have_content('You choose paper')
    end

    scenario 'can choose scissors' do
      choose('scissors')
      click_button('I have chosen')
      page.should have_content('You choose scissors')
    end


  end

end
