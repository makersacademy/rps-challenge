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
    click_on 'Submit'
    # visit '/play-game'
    expect(current_path).to eq('/play-game')
    click_on "Rock"
    # save_and_open_page
    expect(current_path).to eq('/result')
  end

  scenario 'The results page should have winner text on it' do
    visit '/'
    fill_in 'username', with: 'Matt'
    click_on 'Submit'
    # visit '/play-game'
    expect(current_path).to eq('/play-game')
    click_on "Rock"
    expect(page).to have_content 'And the winner is..'
  end


end
