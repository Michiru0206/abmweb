require 'rails_helper'
require 'spec_helper'

describe User do
    describe '#create' do

        it "User can sign up if every information is filled" do
            user = build(:user)
            expect(user).to be_valid
        end
    end
end