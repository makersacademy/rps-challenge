feature 'calls a draw' do
  scenario 'both players pick the same item' do
    sign_in_and_confirm
    allow_any_instance_of(Computer).to receive(:computer_turn).and_return(:paper)
    click_button "Paper"
    expect(page).to have_content "It's a draw!"
  end
end
