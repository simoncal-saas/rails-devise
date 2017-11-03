describe User do

  before(:each) { @user = User.new(email: 'user@example.com', first_name: 'Jack', last_name: 'Hardy') }

  subject { @user }

  it { should respond_to(:email, :first_name, :last_name) }

  it "#email returns a string" do
    expect(@user.email).to match 'user@example.com'
  end

  it "returns a full name" do
    expect(@user.name).to match 'Jack Hardy'
  end

end
