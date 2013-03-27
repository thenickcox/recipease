describe Recipe do

  it 'should have a valid factory' do
    FactoryGirl.build(:recipe).should be_valid
  end

  it 'should validate the presence of the correct attributes' do
    [ :directions, :link, :name ].each do |attr|
      subject.should validate_presence_of attr
    end
  end

end
