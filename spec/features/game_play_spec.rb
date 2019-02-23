require './app'

feature 'game play' do
  scenario 'player chooses default rock and game chooses scissors => player wins' do
    srand(3)
    visit '/'
    fill_in 'name', with: "Mark Eteer"
    click_button 'Submit'
    choose 'rock'
    click_button 'Play'
    expect(page).to have_content("WIN")
  end
  scenario 'player chooses paper and game chooses scissors => player loses' do
    srand(3)
    visit '/'
    fill_in 'name', with: "Mark Eteer"
    click_button 'Submit'
    choose 'paper'
    click_button 'Play'
    expect(page).to have_content("LOSE")
  end
  scenario 'player chooses scissors and game chooses scissors => player draws' do
    srand(3)
    visit '/'
    fill_in 'name', with: "Mark Eteer"
    click_button 'Submit'
    choose 'scissors'
    click_button 'Play'
    expect(page).to have_content("DRAW")
  end
end
