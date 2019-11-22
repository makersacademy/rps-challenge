feature 'Test infrastructure' do
  scenario 'functions correctly' do
    visit('/test-infrastructure')
    expect(page).to have_content "Test infrastructure correctly functioning"
  end
end
