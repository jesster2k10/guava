# == Schema Information
#
# Table name: users
#
#  id           :bigint           not null, primary key
#  email        :string           not null
#  firebase_uid :string           not null
#  first_name   :string
#  last_name    :string
#  username     :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#
class User < ApplicationRecord
  rolify
  has_person_name

  has_many :decks, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true, format: { with: /^[a-zA-Z0-9_.]*$/, multiline: true }
end
