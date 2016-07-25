feature 'determine the winner' do
  scenario 'player selects the winning option' do
    allow(Kernel).to receive(:rand).and_return(0)
    register_player
    click_button("scissors")
    expect(page).to have_content "The winner is Tim"
  end
end
