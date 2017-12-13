feature 'Feature: registering' do
  feature 'permits registering with a name' do
    before(:each) { register }

    scenario 'user can log in with a name' do
      expect(page.find_by_id('p1')).to have_content default_name
    end
  end

  feature 'does not permit registering with blank name' do
    before(:each) { register('') }

    scenario 'users cannot move on without giving a name' do
      expect(page.current_path).to eq '/register'
    end
  end
end
