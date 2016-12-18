class Organization < ApplicationRecord
  has_and_belongs_to_many :categories

  has_many :goods_types_organizations
  has_many :goods_types, through: :goods_types_organizations

  def self.filter_by_params(params)
    return all unless params.present?

    by_city(params[:city])
      .by_categories(params[:category_names])
  end

  protected

  def self.by_city(city)
    # use .present? to account for empty string (or array below)
    city.present? ? where(city: city) : all
  end

  def self.by_categories(category_names)
    return all unless category_names.present?

    joins(:categories).where(categories: { name: category_names })
  end
end
