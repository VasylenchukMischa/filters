# == Schema Information
#
# Table name: brands
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Brand, type: :model do
  it 'has valid factory' do
    expect(build(:brand)).to be_valid
  end
end
