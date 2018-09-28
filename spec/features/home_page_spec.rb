feature 'Home page' do
  scenario 'Check if home page looks as expected' do
    visit '/'
    expect(page).to have_content 'Let\'s play a game of Rock, Paper, Scissors!'
    expect(page).to have_content 'Enter your name:'
  end

  scenario 'Submit name' do
    visit '/'
    fill_in :player, with: 'Ren'
    click_button 'Submit'
    expect(page).to have_content "Choose rock, paper or scissors."
  end
end
