class User

  attr_reader :name

  def self.create(name)
    @user = User.new(name)
  end

  def self.instance
    @user
  end

  def initialize(name)
    @name = name
  end
end
