feature "To play the game" do

  scenario 'player is presented with the choice: rock, paper, scissors' do
    choose_rps
  end

  scenario 'player chooses a card' do
    visit('/play')
    #page.has_checked_field?(:paper)
    choose(:paper)
    click_button "Submit"
    expect(page).to have_css('#paper')
  end
end