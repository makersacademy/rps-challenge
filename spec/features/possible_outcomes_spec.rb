feature 'drawing' do
  scenario "picking rock and computer picks rock" do
    allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
    sign_in_and_play
    click_button 'submit'
    expect(page).to have_content "You draw!"
  end
end

feature 'winning' do
  scenario "picking rock and computer picks scissors" do
    allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
    sign_in_and_play
    click_button 'submit'
    expect(page).to have_content "You win!"
  end
end

feature 'losing' do
  scenario "picking rock and computer picks paper" do
    allow_any_instance_of(Array).to receive(:sample).and_return("Paper")
    sign_in_and_play
    click_button 'submit'
    expect(page).to have_content "You lose!"
  end
end
