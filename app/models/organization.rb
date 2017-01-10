class Organization < ApplicationRecord

  mount_uploader :image, ImageUploader

  has_and_belongs_to_many :categories
  belongs_to :user
  has_many :goods_types_organizations
  has_many :goods_types, through: :goods_types_organizations

  geocoded_by :full_street_address

  after_validation :geocode        # auto-fetch coordinates


  def self.filter_by_params(params)
    return all unless params.present?

    by_city(params[:city])
      .by_categories(params[:category_names])
      .by_orgtype(params[:orgtype])
  end

  def full_street_address
    return "#{self.address}#{self.suite? ? ' ' + self.suite : ''} #{self.postal} #{self.city} #{self.province}"
  end

  def google_address
    return "#{self.name} #{full_street_address}".split(' ').join('+')
  end

  protected

  def self.by_city(city)
    city.present? ? where(city: city) : all
  end

  def self.by_categories(category_names)
    return all unless category_names.present?

    joins(:categories).where(categories: { name: category_names }).uniq
  end

  def self.by_orgtype(orgtype)
    orgtype.present? ? where(orgtype: orgtype) : all
  end

end
