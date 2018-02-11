feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content("Rock Paper Scissors")
  end
end

feature 'Enter players name' do
  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content 'Ben vs Computer'
  end
end

feature "Rock, Paper, Scissor buttons" do
  scenario "Rock button exists" do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, "Rock")
  end
end

feature "Play again?" do
  scenario "Play again button exists" do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_selector(:link_or_button, "Play again?")
  end
end

feature 'Result page' do
  scenario 'Playes name appears' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Ben'
  end
end
