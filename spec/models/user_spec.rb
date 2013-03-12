describe User do

  it 'should have a valid factory' do
    FactoryGirl.build(:user).should be_valid
  end

  it 'should validate presence of the correct attributes' do
    [ :email, :password ].each do |attr| 
      subject.should validate_presence_of attr
    end
  end

end
