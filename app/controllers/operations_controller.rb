class OperationsController < ApplicationController
  before_action :authenticate_user!

  # GET /operations/new
  def new
    @category = Category.find(params[:category_id])
  end
  
  # POST /operations or /operations.json
  def create
    @operation = Operation.new(operation_params)
    @operation.user_id = current_user.id
    @operation.category_id = params[:category_id]

    respond_to do |format|
      if @operation.save
        format.html { redirect_to category_path(params[:category_id]), notice: 'Operation was successfully created.' }
        format.json { render :show, status: :created, location: @operation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operations/1 or /operations/1.json
  def destroy
    @operation = Operation.find(params[:id])
    @operation.destroy

    respond_to do |format|
      format.html { redirect_to operations_url, notice: 'Operation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Only allow a list of trusted parameters through.
  def operation_params
    params.require(:operation).permit(:name, :amount, :user_id)
  end
end
