require_relative '../../app'

feature "#choice" do
  scenario "the player can choose rock, paper or scissors" do
    sign_in_and_play
    expect(page).to have_field 'choice'
  end
end
