require_relative './web_helpers'

feature 'game ends' do
  scenario 'user can see what computer chose' do
    sign_in_and_play
    click_button('Rock')
    allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
    visit('/play_end')
    expect(page).to have_content("Computer chose: Rock")
  end

  scenario 'user can see if he won' do
    sign_in_and_play
    click_button('Rock')
    allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
    visit('/play_end')
    expect(page).to have_content("Congratulations, you WON!")
  end

  scenario 'user can see if she lost' do
    sign_in_and_play
    click_button('Rock')
    allow_any_instance_of(Array).to receive(:sample).and_return("Paper")
    visit('/play_end')
    expect(page).to have_content("Oh oh, you LOST!")
  end

  scenario 'user can see if he drew' do
    sign_in_and_play
    click_button('Rock')
    allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
    visit('/play_end')
    expect(page).to have_content("Great minds think alike - you drew.")
  end
end
