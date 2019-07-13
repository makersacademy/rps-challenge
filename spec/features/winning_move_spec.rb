feature 'states the winner' do
  scenario 'player beats computer' do
    sign_in_and_confirm
    allow_any_instance_of(Computer).to receive(:computer_turn).and_return(:paper)
    click_button "Scissors"
    expect(page).to have_content "Rianne wins!"
  end
end
