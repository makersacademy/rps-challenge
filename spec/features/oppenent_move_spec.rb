require 'capybara'

feature 'opponent move' do
  scenario 'opponent chooses rock' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(0)
    click_button 'Rock'

    expect(page).to have_content("Computer chooses Rock")
  end
end
