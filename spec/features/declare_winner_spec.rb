require 'capybara'

feature 'declare winner' do
  scenario 'Boris chooses rock, computer chooses scissors' do
    sign_in_and_play
    click_button 'Rock'

    allow(Kernel).to receive(:rand).and_return(2)

    expect(page).to have_content("You won!")
  end
end
