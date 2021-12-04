# I would like to register my name before playing an online game

feature 'Enter name see choices' do
    scenario 'The user submits their name and sees rock, paper, scissors' do
    visit('/')
    fill_in :player_name, with: 'Sabrina'
    click_button 'Submit'
    expect(page).to have_content 'Rock, paper or scissors?'
    end
end