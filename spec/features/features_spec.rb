feature 'Enter name' do

  scenario 'submit name' do
    sign_in_and_play
  end

  scenario 'choose hand' do
    sign_in_and_play
    expect(page).to have_content 'GREETINGS MATT CHOOSE YOUR WEAPON'
    find_link('ROCK').visible?
    find_link('PAPER').visible?
    find_link('SCISSORS').visible?
    end
end
