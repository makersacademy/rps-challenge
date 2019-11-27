describe 'A homepage', type: :feature do
  specify 'that it has a title' do
    visit '/'
    expect(page).to have_content("Rock Paper Scissors")
  end
end
