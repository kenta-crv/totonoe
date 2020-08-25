class ListsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]
  before_action :before_search
    def index
      @q = List.ransack(params[:q])
      @lists = @q.result
      @lists = @lists.page(params[:page]).per(20).order(created_at: :desc)
      #@lists = list.all
      respond_to do |format|
       format.html
       format.csv{ send_data @lists.generate_csv, filename: "lists-#{Time.zone.now.strftime('%Y%m%d%S')}.csv" }
      end
    end

    def show
      @list = List.find(params[:id])
    end

    def new
      @list = List.new
    end

    def create
      @list = List.new(list_params)
      if @list.save
        redirect_to lists_path
      else
        render 'new'
      end
    end

    def edit
      @list = List.find(params[:id])
    end

    def destroy
      @list = List.find(params[:id])
      @list.destroy
       redirect_to lists_path
    end

    def update
      @list = List.find(params[:id])
      if @list.update(list_params)
        redirect_to lists_path
      else
        render 'edit'
      end
    end

    private
    def list_params
      params.require(:list).permit(
        :company, #会社名
        :name, #代表者名
        :tel, #電話番号
        :address, #住所
        :mail, #URL
        :url, #URL
        :url_2, #URL2
        :title, #タイトル
        :industry, #職種
        :other,
        :other2,
        :caption, #資本金
        :people, #従業員数
        :image
        )
    end
end
