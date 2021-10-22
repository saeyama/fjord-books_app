# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  validate :avatar_extension

  def avatar_extension
    ['avatar/png', 'avatar/jpg', 'avatar/jpeg']
  end
end
