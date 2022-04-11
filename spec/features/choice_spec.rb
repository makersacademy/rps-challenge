require_relative '../../app'

feature "#choices" do
  scenario "the player can select rock, paper or scissors" do
    sign_in_and_play
    select "Rock", from: 'option'
    click_button 'Submit'
    expect(page).to have_content "You selected Rock!"
  end
end