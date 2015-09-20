feature 'Playing game' do

  scenario 'The user should select one of the three options' do
    visit '/'
    fill_in 'username', with: 'Matt'
    click_on 'Submit'
    expect(page).to have_content "Please choose your option"
  end

  scenario 'The user should be redirected to a page that tells result of that round' do
    visit '/'
    fill_in 'username', with: 'Matt'
    visit '/play-game'
    click_on "Rock"
    visit '/result'
    expect(page).to have_content 'And the winner is..'

    #This may be a vacuous test - would ideally like to click on Rock, and then have     expect(current_path).to eq('/result') to test that the redirect has happened but cant get this to work
  end

end
