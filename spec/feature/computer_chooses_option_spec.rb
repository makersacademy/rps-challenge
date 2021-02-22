feature 'Computer chooses randomly' do
  scenario 'player sees confirmation of computer choice' do
    allow_any_instance_of(Computer).to receive(:move) { :scissors }
    sign_up_and_go
    click_button 'Play'
    click_link 'Rock'
    expect(page).to have_content 'Computer chose Scissors'
    expect(page).not_to have_content 'Sinatra'
  end
end
