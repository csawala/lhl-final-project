class DashboardController < ApplicationController

  def show
    if !current_user
      redirect_to login_path

    elsif current_user.organization.present?
      @org = current_user.organization
      @needs = @org.goods_types_organizations.where(needs: true)
      @offers = @org.goods_types_organizations.where(offers: true)

    else
      redirect_to root_path
    end
  end

  def update
    @org = validate_organization(params[:id])
  end

  def updatecard(card_id)
    # something like (works in rails console!):
    # @card = @org.goods_types_organizations.find(card_id)
    # @card.active ? @card.active = false : @card.active = true
  end

  protected

  def validate_organization(id)
    if Organization.where(id: id).count == 0
      redirect_to organizations_path
    else
      @org = Organization.find(id)
    end
  end
end
