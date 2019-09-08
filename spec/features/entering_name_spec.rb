feature 'Input player name' do
  scenario 'to see name in lights, player enters name' do
    sign_in_and_play
    expect(page).to have_content 'Hi Rocky, welcome to rock, paper, scissors!'
  end
end
