class MainController < ApplicationController
  before_filter :set_menu, :only => [ :index, :about_company, :about_product, :contacts ]

  def index
  end

  def about_company
  end

  def about_products
  end

  def contacts
  end

  private
  def set_menu
   @menu = {t("menu.about.company") => :about_company, t("menu.about.product") => :about_product, t("menu.about.partners") => :root, t("menu.about.contacts") => :contacts}
  end
end
