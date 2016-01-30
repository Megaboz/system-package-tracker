class Package < ActiveRecord::Base
  has_and_belongs_to_many :vulnerabilities
  has_and_belongs_to_many :systems
end
