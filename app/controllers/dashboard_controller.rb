class DashboardController < ApplicationController

  def show
    if !current_user
      redirect_to login_path

    elsif current_user.organization.present?
      @org    = current_user.organization
      @needs  = @org.goods_types_organizations.where(needs: true).order(:active)
      @offers = @org.goods_types_organizations.where(offers: true).order(:active)

      @need  = @org.goods_types_organizations.new
      @offer = @need
      @goods_types = GoodsType.all.pluck(:name, :id)
      @goods_types.unshift(['Select a type', 0])
    else
      redirect_to root_path
    end

  end

  def update
    @org = validate_organization(params[:id])
  end

  def newneed
    @need = GoodsTypesOrganization.new(needs:true)

    create_need_offer(@need, params, current_user)
  end

  def newoffer
    @offer = GoodsTypesOrganization.new(offers:true)

    create_need_offer(@offer, params, current_user)
  end

  def updatecard
    # something like (works in rails console!):
    @card = @org.goods_types_organizations.find(params[:card_id])
    @card.active ? @card.active = false : @card.active = true
  end

  protected

  def create_need_offer(new_card, params, user)
    new_card[:organization_id] = current_user.organization.id
    new_card[:goods_type_id]   = params[:goods_type]
    new_card[:description]     = params[:goods_types_organization][:description]

    if !new_card.save
      return redirect_to dashboard_path,
      notice: "Something went wrong... please make sure to enter a description and type for each need or offer"
    end

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
