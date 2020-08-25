class ApplicationController < ActionController::Base

  def before_search
    @q = List.ransack(params[:q])
    @lists = @q.result
  end

  def after_sign_in_path_for(resource)
    case resource
    when Admin
      "/admin/#{current_admin.id}" #決済画面へ
    else
      super
    end
  end

  def after_sign_out_path_for(resource)
    case resource
    when Admin, :admin, :admins
      new_admin_session_path
    else
      super
    end
  end

  def layout_by_resource
    if devise_controller && resource_name == :admin
      "admins"
    else
      "application"
    end
  end

  def layout_by_resource
    if devise_controller?
      "application"
    end
  end
end
