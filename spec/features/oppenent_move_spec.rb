require 'capybara'

feature 'opponent move' do
  scenario 'opponent chooses rock' do
    sign_in_and_play
    click_button 'Rock'

    allow(Kernel).to receive(:rand).and_return(0)

    expect(page).to have_text("Computer chooses Rock")
  end
end
