require_relative '../../app/models/user_login'

describe UserLogin do
  let(:user){ stub(id: 1) }
  let(:mock_user_class){ stub }
  let(:password){ 'test123' }
  let(:email){ 'test@email.com' }
  let(:session){ {} }

  describe '.login' do
    it 'logs in a user if the password/email combination is found' do
      user.should_receive(:authenticate).with(password).and_return(user)
      mock_user_class.should_receive(:find_by_email).with(email).and_return(user)
      UserLogin.login(email, password, session, mock_user_class)
      session[:user_id].should == 1
    end
  end
end
