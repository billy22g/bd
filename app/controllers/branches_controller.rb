class BranchesController < ApplicationController

  def index
    @branches = Branch.all
  end

  def show
    @branch = Branch.find_by(name: params[:id].titleize)
    @bases = @branch.bases
  end
end
