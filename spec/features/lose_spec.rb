feature 'The result of the game' do
  scenario "The player loses" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('You lose!')
  end
end