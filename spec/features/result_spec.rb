feature 'Displays winner page' do
  scenario 'Display page when player wins' do
    visit('/')
    fill_in :name, with: "Charlotte"
    click_button("Let's play!")
    click_button('Rock')
    expect(page).to have_content 'Charlotte wins!'
  end
 end
 feature 'Play again?' do
  scenario 'Takes player back to the start page' do
    visit('/')
    fill_in :name, with: "Charlotte"
    click_button("Let's play!")
    click_button('Rock')
    click_button('Play again?')
    expect(page).to have_content 'Welcome to Rock, Paper, Scizzors!'
  end
 end
