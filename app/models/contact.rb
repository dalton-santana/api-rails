class Contact < ApplicationRecord
  belongs_to :kind
  has_many :phones

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
