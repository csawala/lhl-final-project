class DashboardController < ApplicationController

  def show
    if !current_user
      redirect_to login_path

    elsif current_user.organization.present?
      @org    = current_user.organization
      @needs  = @org.goods_types_organizations.where(needs: true)
                    .order(active: :desc)
      @offers = @org.goods_types_organizations.where(offers: true)
                    .order(active: :desc)

      find_matches(@needs)
      find_matches(@offers)

      @goods_types = GoodsType.all.pluck(:name, :id)

      @goods_types.unshift(['Select a type', 0])
    else
      redirect_to root_path
    end

  end

  def update
    @org = validate_organization(params[:id])
  end

  protected

  def find_matches(cards)
    cards.each do |card|
      if card.needs
        GoodsTypesOrganization.where(offers: true, goods_type_id: card.goods_type_id)
        # cards[card]
      else
        # needs work here
        return
      end
    end
  end

  def validate_organization(id)
    if Organization.where(id: id).count == 0
      redirect_to organizations_path
    else
      @org = Organization.find(id)
    end
  end
end