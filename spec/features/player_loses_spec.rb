feature 'Player loses page:' do
  scenario "appears when computer has beaten player" do
    allow_any_instance_of(Array).to receive(:sample) { :rock }
    register_and_play
    click_button('Scissors')
    expect(page).to have_content('Unlucky, you lost!')
  end
end
