feature 'Testing infrastructure' do

  scenario 'Can run app and check page content' do
    visit_home
    expect(page).to have_content 'Enter your name'
  end

  scenario 'Home page should have a field to enter name' do
    visit_home
    expect(page).to have_field('name')
  end

  scenario 'Home page should have a button to submit name' do
    visit_home
    expect(page).to have_button('Begin')
  end

  before do
    visit_home
    srand(1006)
    sign_in
  end

  scenario 'Can enter name and see that name has been stored on the next page' do
    expect(page).to have_content 'Player - TEST'
  end

  scenario 'Can view the name of the computer player on the battle page' do
    expect(page).to have_content 'Computer - Donnie finga-slinga'
  end

  scenario 'Battle page should have an option for rock, paper and scissors' do
    expect(page).to have_content("ROCK") and have_content("PAPER") and have_content("SCISSORS")
  end

  scenario 'Battle page should have a button to submit choice' do
    expect(page).to have_button('GO')
  end

  scenario 'Should be able to select an option and see your choice on the next page' do
    choose_paper
    expect(page).to have_content('You chose PAPER!')
  end

  scenario 'Should be able to see the choice that the computer player made' do
    choose_paper
    expect(page).to have_content('Donnie finga-slinga chose ROCK!')
  end

  scenario "Shoud have a button 'Ok'" do
    choose_paper
    expect(page).to have_button('Ok')
  end

end
