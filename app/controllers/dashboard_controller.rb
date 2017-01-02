class DashboardController < ApplicationController

  def show
    if !current_user
      redirect_to login_path

    elsif current_user.organization.present?
      @org = current_user.organization
      @needs = @org.goods_types_organizations.where(needs: true).order(:active)
      @offers = @org.goods_types_organizations.where(offers: true).order(:active)

    else
      redirect_to root_path
    end
    @need  = @org.goods_types_organizations.new(needs:true)
    @offer = @org.goods_types_organizations.new(offers:true)
  end

  def update
    @org = validate_organization(params[:id])
  end

  def newneed
    @need = GoodsTypesOrganization.new(needs:true)
    need_data = params[:goods_types_organization]

    @need[:description] = need_data[:description]
    @need[:organization_id] = current_user.organization.id

    @need.save!
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
