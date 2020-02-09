feature 'Player chooses move' do
  scenario "player chooses rock" do
    visit('/')
    fill_in :player_1_name, with: 'Gruntilda'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'Player picked: Rock'
  end

  scenario "player chooses paper" do
    visit('/')
    fill_in :player_1_name, with: 'Gruntilda'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content 'Player picked: Paper'
  end

  scenario "player chooses between scissors" do
    visit('/')
    fill_in :player_1_name, with: 'Gruntilda'
    click_button 'Submit'
    click_button 'Scissors'
    expect(page).to have_content 'Player picked: Scissors'
  end
end