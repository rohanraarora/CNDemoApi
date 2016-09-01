class EventImagesController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @ei = @event.event_images.create(image_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find(params[:event_id])
    @ei = @event.event_images.find(params[:id])
    @ei.destroy
    redirect_to event_path(@event)
  end

  private
  def image_params
    params.require(:event_image).permit(:image)
  end
end
