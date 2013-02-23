class UserLogin
  def self.login(email, password, session, user_class = User)
    new(user_class).login(email, password, session)
  end

  def initialize(user_class)
    @user_class = user_class
  end

  def login(email, password, session)
    user = user_class.find_by_email(email)
    user = user.authenticate(password) if user
    session[:user_id] = user.id if user
  end

  private

  attr_reader :user_class
end
