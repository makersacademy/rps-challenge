feature 'playing rock' do
  scenario 'playing rock vs the computer' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'The Obsidian Man: Rock'
  end
end

