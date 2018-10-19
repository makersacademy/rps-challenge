feature 'Play game' do
  scenario 'player chooses a move and gets a win screen' do
    visit '/'
    fill_in 'name', with: "Mittens"
    click_button 'Submit'
    choose 'Rock'
    click_button 'Submit'
    expect(page).to have_content 'You win!'
  end
end
