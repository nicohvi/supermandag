require 'securerandom'

class VisitorHash < ActiveRecord::Base
  before_save :generate_hash

  validates_uniqueness_of :hash, scope: :email

end