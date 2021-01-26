feature ' testing working' do
  scenario 'testing infrastructure should work' do 
    visit '/test'
    expect(page).to have_content("Testing infrastructure working!")
  end
end