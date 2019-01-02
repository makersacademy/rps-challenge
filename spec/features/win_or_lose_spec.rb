feature 'shows win lose or draw' do
  scenario "user submits move and gets 'It/'s a draw message' message" do
    sigin_in_as_sam
    visit '/play'
    allow(Kernel).to receive(:rand) { 0 }
    choose('move_rock')
    expect(page).to have_selector("input[value='rock']")
    click_button 'Make your move!'
    expect(page).to have_content("It's a draw...")
  end
end
