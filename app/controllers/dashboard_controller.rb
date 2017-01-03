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
    @goods_types = GoodsType.all.pluck(:name, :id)
    @goods_types.unshift(['Select a type', 0])
  end

  def update
    @org = validate_organization(params[:id])
  end

  def newneed
    @need = GoodsTypesOrganization.new(needs:true)

    create_need_order(@need, params, current_user)
  end

  def newoffer
    @offer = GoodsTypesOrganization.new(offers:true)

    create_need_order(@offer, params, current_user)
  end

  def updatecard(card_id)
    # something like (works in rails console!):
    # @card = @org.goods_types_organizations.find(card_id)
    # @card.active ? @card.active = false : @card.active = true
  end

  protected

  def create_need_order(type, params, user)
    type[:organization_id] = current_user.organization.id
    type[:goods_type_id]   = params[:goods_type]
    type[:description]     = params[:goods_types_organization][:description]

    type.save!

    redirect_to dashboard_path
  end

  def validate_organization(id)
    if Organization.where(id: id).count == 0
      redirect_to organizations_path
    else
      @org = Organization.find(id)
    end
  end
end
