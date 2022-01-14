class Contact < ApplicationRecord
  belongs_to :kind
  has_many :phones
  has_one :address
  accepts_nested_attributes_for :phones, allow_destroy: true
  accepts_nested_attributes_for :address

  def hello
    I18n.t('hello')
  end

  def i18n
    I18n.default_locale
  end

  def birthdate_br
    I18n.l(self.birthdate) unless self.birthdate.blank?
  end
end
