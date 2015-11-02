feature 'The result of the game' do
  scenario "The player wins" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('Congratulations! You win!')
  end
end