feature 'Register name' do
  scenario "registers name to play" do
    register_and_play
    expect(page).to have_content('Welcome Hamza')
  end
end
