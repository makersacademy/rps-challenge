# the marketeer will be presented the choices (rock, paper and scissors)
feature 'Presenting choices' do
  scenario 'display choices (rock, paper, scissors)' do
    visit '/'
    fill_in :player_1_name, with: 'Arjun'
    click_button 'Submit'
    expect(page).to have_content 'Player choices: rock, paper, scissors'
  end
end
