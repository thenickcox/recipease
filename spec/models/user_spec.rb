require 'spec_helper'

describe User do

  it 'should have a valid factory' do
    FactoryGirl.build(:user).should be_valid
  end

end
