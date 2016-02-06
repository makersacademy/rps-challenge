feature 'Enter name' do

  scenario 'submit name' do
    visit('/')
    fill_in :player_name, with: 'Matt'
    click_button 'ENTER'
  end

  scenario 'choose hand' do
    visit('/')
    fill_in :player_name, with: 'Matt'
    click_button 'ENTER'
    expect(page).to have_content 'GREETINGS MATT CHOOSE YOUR WEAPON'
    find_link('ROCK').visible?
    find_link('PAPER').visible?
    find_link('SCISSORS').visible?
    end
end
