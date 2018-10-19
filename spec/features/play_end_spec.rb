require_relative './web_helpers'

feature 'game ends' do
  scenario 'user can see what computer chose' do
    sign_in_and_play
    click_button('Rock')
    allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
    visit('/play_end')
    expect(page).to have_content("Computer chose: Rock")
  end
end
