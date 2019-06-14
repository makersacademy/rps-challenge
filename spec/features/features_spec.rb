feature 'Game is setup properly' do
  scenario 'Player can enter their name' do
    visit '/'
    fill_in('Name:', with: 'Mama')
    click_button("Let's Play")
    #expect(page).to have_content('MAMA')
  end
end

feature 'As a player I can enter my name and pick a move' do
  scenario 'Player enters their name chooses to play rock' do
    visit '/'
    fill_in('Name:', with: 'Mama')
    click_button("Let's Play")
    click_button("Rock")
    expect(page).to have_content('Mama','Rock')
  end
end