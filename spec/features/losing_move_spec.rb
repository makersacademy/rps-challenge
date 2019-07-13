feature 'states the outcome' do
  scenario 'computer beats player' do
    sign_in_and_confirm
    allow_any_instance_of(Computer).to receive(:computer_turn).and_return(:paper)
    click_button "Rock"
    expect(page).to have_content "Rianne loses!"
  end
end
