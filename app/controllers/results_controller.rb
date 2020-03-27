class ResultsController < ApplicationController
  def example
    params.require(:results_form).permit(
      results: []
    )
  end
end
