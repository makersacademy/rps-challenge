feature 'Player draws page:' do
  scenario "appears when its a draw between computer and player" do
    allow_any_instance_of(Array).to receive(:sample) { :paper }
    register_and_play
    click_button('Paper')
    expect(page).to have_content("It's a tie!")
  end
end
