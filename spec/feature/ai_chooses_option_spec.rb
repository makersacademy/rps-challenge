feature 'AI chooses randomly' do
  scenario 'player sees confirmation of AI choice' do
    allow_any_instance_of(Ai).to receive(:choice) { :scissors }
    sign_up_and_go
    click_button 'Play'
    click_link 'Rock'
    expect(page).to have_content 'AI chose Scissors'
  end
end
