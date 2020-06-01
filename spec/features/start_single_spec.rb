feature 'start page single player' do

  scenario 'prompts player to enter their name' do
    visit '/'
    click_button 'Single Player'
    expect(page).to have_content 'PLEASE ENTER YOUR NAME'
  end
end
