feature 'Playing the game 'do

  scenario 'player is presented with the choice: rock, paper, scissors' do
    visit('/play')
    ["0", "1", "2"].each {|item| find(:css, "img\##{item}").click}
  end

  scenario 'player chooses a card' do
    visit('/play')
    choose(1)
    click_button "Submit"
    expect(page).to have_css('#1')
  end
end
