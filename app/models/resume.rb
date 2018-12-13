class Resume < ApplicationRecord
  belongs_to :user
  has_many :educations
  accepts_nested_attributes_for :educations, :allow_destroy => true
  has_many :social_medium
  accepts_nested_attributes_for :social_medium, :allow_destroy => true
  has_one :profile
  accepts_nested_attributes_for :profile, :allow_destroy => true
  has_many :projects
  accepts_nested_attributes_for :projects, :allow_destroy => true
  has_many :experiences
  accepts_nested_attributes_for :experiences, :allow_destroy => true
  has_many :skills
  has_many :tools, through: :skills
  has_many :others, through: :skills
  has_many :interpersonals, through: :skills
end
