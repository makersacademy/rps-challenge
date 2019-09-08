feature 'Input player name' do
  scenario 'to see name in lights, player enters name' do
    visit '/'
    fill_in :player, with: 'Rocky'
    click_on 'Submit'
    expect(page).to have_content 'Hi Rocky, welcome to rock, paper, scissors!'
  end
end
