feature 'Game is setup properly' do
  scenario 'Player can enter their name' do
    visit '/'
    fill_in('Name:', with: 'MAMA')
    click_button("Let's Play")
    expect(page).to have_content('MAMA')
  end
end