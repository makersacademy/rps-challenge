feature 'Entering name' do
  scenario "Player can enter their name" do
    sign_in_and_play
    expect(page).to have_content("Hi Bob! Let's play Rock Paper Scissors!")
  end
end
