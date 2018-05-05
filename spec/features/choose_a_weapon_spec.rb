feature 'player can see a choice of three weapons' do
  scenario 'player chooses rock' do
    sign_in_and_start
    click_button 'rock'
    expect(page).to have_content 'Your choice: rock'
  end


end
