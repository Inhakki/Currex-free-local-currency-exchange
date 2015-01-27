class Post < ActiveRecord::Base

  belongs_to :user

  validates :zip_code,
    presence: true,
    length: { is: 5 },
    numericality: { only_integer: true }

  validates :title,
    presence: true,
    length: { maximum: 150 }

  validates :currency_type,
    presence: true

  validates :cash_amount,
    presence: true,
    numericality: true

  validates :is_request,
    presence: true


end
