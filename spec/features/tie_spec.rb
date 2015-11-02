feature 'The result of the game' do
  scenario "There is a tie in the game" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('Tie!')
  end
end