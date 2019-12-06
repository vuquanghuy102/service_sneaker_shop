class Api::V1::CategoriesController < ApplicationController

  def list_category
    @categories = Category.all

    respond_to do |format|
      format.json { render json: @categories }
    end
  end

  def create_category
    @category = Category.new(name: params[:name_category])
    if @category.save
      respond_to do |format|
        format.json { render json: @category, status: :ok }
      end
    else
      respond_to do |format|
        format.json { render status: :false }
      end
    end
  end

  def edit_category
    @category = Category.find_by(id: params["id_category"])
    @category.update_attributes(name: params["name_category"])

    if @category.save
      respond_to do |format|
        format.json { render json: @category, status: :ok }
      end
    else
      respond_to do |format|
        format.json { render status: :false }
      end
    end
  end

  def delete_category
    @category = Category.find_by(id: params["id_category"])

    if @category.destroy
      respond_to do |format|
        format.json { render json: @category, status: :ok }
      end
    else
      respond_to do |format|
        format.json { render status: :false }
      end
    end
  end

  def load_category
    @category_params = Category.find_by(id: params["id_category"])

    respond_to do |format|
      format.json { render json: @category_params }
    end
  end

  private

end
