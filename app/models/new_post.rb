class NewPost
  include ActiveModel::Validations
  include ActiveModel::Conversion

  POST_FIELDS = [:title, :content, :notes, :bounty]
  USER_FIELDS = [:email, :password]

  delegate *POST_FIELDS, to: :@post
  delegate *USER_FIELDS, to: :@user

  def initialize(opts = {})
    @post = Post.new(opts.slice(*POST_FIELDS))
    @user = User.new(opts.slice(*USER_FIELDS))
  end

  def save
    if valid?
      @user.save!
      @post.author = @user
      @post.save!
    else
      false
    end
  end

  def persisted?; false end
end
