require_relative '../../app.rb'

feature "game page" do

  scenario "allows user to select rock" do
    sign_in_and_play
    choose 'Rock'
    click_button 'Confirm Choice'
    expect(page).to_not have_content("Choose your weapon, Ed")
    expect(page).to have_content("You have chosen Rock")
  end

end
