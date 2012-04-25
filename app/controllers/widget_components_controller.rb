class WidgetComponentsController < ApplicationController

  def update
    @widget_component = WidgetComponent.find params[:id]

    respond_to do |format|
      if @widget_component.update_attributes(params[:widget_component])
        format.json { respond_with_bip(@widget_component) }
      else
        format.json { respond_with_bip(@widget_component) }
      end
    end   
  end

  def destroy
    @widget_component = WidgetComponent.find params[:id]

    @widget_component.destroy

    redirect_to :back
  end
end
