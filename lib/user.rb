class User

  @user_id = {}
  @choices = []

  def self.set(email, password)
    @user_id[email] = password
  end

  def self.get
    @user_id
  end

  def self.set_choice(choice)
    @choices << choice
  end

  def self.get_choice
    @choices
  end

  def self.find_by(email, password)
    @user_id    
  end

end
