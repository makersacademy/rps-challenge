feature 'Homepage' do

  scenario 'player visits homepage' do
    visit('/')
    expect(page).to have_content 'Rock Paper Scissors'
  end

  scenario 'player chooses battle mode' do
    visit('/')
    click_button "1 Player"
    expect(page).to have_content 'Enter your name'
  end

end
