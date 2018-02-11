feature 'game outcome printed' do
  scenario "check for new 'Play again!' button" do
    visit '/'
    click_button "Let's play!"
    click_button (['rock', 'paper', 'scissors'].sample)
    expect(page).to have_button 'Play again!'
  end
end
