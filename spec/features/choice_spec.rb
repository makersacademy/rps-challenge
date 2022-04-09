require_relative '../../app'

feature "#choice" do
  scenario "the player can choose rock, paper or scissors" do
    sign_in_and_play
    select "Rock", from: 'choice'
    click_button 'Submit'
    expect(page).to have_content "You chose Rock!"
  end
end
