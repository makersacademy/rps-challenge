feature 'testing homepage' do
  scenario 'player invited to play rock paper scissors' do
    visit ('/')
    expect(page).to have_content "Let's play Rock Paper Scissors"
  end
  
  scenario "player click 'enter' button" do
    visit ("/")
    expect(page).to have_selector(:link_or_button, 'Enter')
  end
end

