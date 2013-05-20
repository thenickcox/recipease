require 'spec_helper'

describe Recipe do

  it 'should have a valid factory' do
    FactoryGirl.build(:recipe).should be_valid
  end

  it 'should validate the presence of the correct attributes' do
    [ :directions, :link, :name ].each do |attr|
      subject.should validate_presence_of attr
    end
  end

  describe '#featured' do

    let (:recipe) { FactoryGirl.create(:recipe, featured: featured) }
    subject { Recipe.featured }

    context 'returns true when featured' do
      let(:featured) { true }
      it { should include(recipe) }
    end

    context 'returns false when not featured' do
      let(:featured) { false }
      it { should_not include(recipe) }
    end

  end


end
