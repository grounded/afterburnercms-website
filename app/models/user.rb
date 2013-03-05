class User < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  validates :name, :email, :presence => true
  validates :email, :format => {
    :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
  }
  validates :email, :uniqueness => true
end
