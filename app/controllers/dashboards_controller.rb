class DashboardsController < ApplicationController
  def dashboard_1
  end

  def dashboard_2
  end

  def dashboard_3
    @extra_class = "sidebar-content"
  end

  def dashboard_4
    render :layout => "layout_2"
  end

  def dashboard_4_1
    render :layout => "layout_3"
  end

  def dashboard_5
    render :layout => "layout_3"
  end

end
