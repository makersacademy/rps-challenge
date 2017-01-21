
feature 'Marketeer makes a selection' do
  scenario 'Marketeer chooses Rock and is told they have won'do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    sign_in_and_play
    Checkbox(check 'Rock')
    click_button('Play')
    expect(page).to have_content 'Congratulations You Win!!!'
  end
end
