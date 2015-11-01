feature 'Player wins page:' do
  scenario "appears when player has beaten computer" do
    allow_any_instance_of(Array).to receive(:sample) { :scissors }
    register_and_play
    click_button('Rock')
    expect(page).to have_content('Congratulations, you won!')
  end
end
