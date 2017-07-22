feature 'Player Set Up' do

  scenario 'player visits homepage' do
    visit('/')
    expect(page).to have_content 'Rock Paper Scissors'
  end

  scenario 'player chooses battle mode' do
    visit('/')
    click_button "1 Player"
    expect(page).to have_content 'Enter your name'
  end

  scenario 'player enters name' do
    visit('/')
    click_button "1 Player"
    fill_in :player_1_name, with: "Sir R Spec"
    click_button "Go"
    expect(page).to have_content 'Sir R Spec'
  end

end
