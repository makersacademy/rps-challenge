feature 'Computer makes random move' do
  scenario 'selects rock, paper or scissors' do
    visit('/')
    sign_in_and_play
    choose_rock
    click_button 'OK'
    expect(page).to have_content('computer chose rock'|'computer chose paper'|'computer chose scissors')
  end
end