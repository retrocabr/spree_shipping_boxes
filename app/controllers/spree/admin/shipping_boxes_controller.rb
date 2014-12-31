module Spree
  module Admin
    class ShippingBoxesController < ResourceController
      # GET /shipping_boxes
      # GET /shipping_boxes.json
      def index
        @shipping_boxes = ShippingBox.all

        respond_to do |format|
          format.html # index.html.erb
          format.json { render json: @shipping_boxes }
        end
      end

      # GET /shipping_boxes/new
      # GET /shipping_boxes/new.json
      def new
        @shipping_box = ShippingBox.new

        respond_to do |format|
          format.html # new.html.erb
          format.json { render json: @shipping_box }
        end
      end

      # GET /shipping_boxes/1/edit
      def edit
        @shipping_box = ShippingBox.find(params[:id])
      end

      # POST /shipping_boxes
      # POST /shipping_boxes.json
      def create
        @shipping_box = ShippingBox.new(params[:shipping_box])

        respond_to do |format|
          if @shipping_box.save
            format.html { redirect_to admin_shipping_boxes_url, notice: 'Modelo de caixa criado com sucesso.' }
            format.json { render json: @shipping_box, status: :created, location: @shipping_box }
          else
            format.html { render action: "new" }
            format.json { render json: @shipping_box.errors, status: :unprocessable_entity }
          end
        end
      end

      # PUT /shipping_boxes/1
      # PUT /shipping_boxes/1.json
      def update
        @shipping_box = ShippingBox.find(params[:id])

        respond_to do |format|
          if @shipping_box.update_attributes(params[:shipping_box])
            format.html { redirect_to admin_shipping_boxes_url, notice: 'Modelo de caixa atualizado com sucesso.' }
            format.json { head :no_content }
          else
            format.html { render action: "edit" }
            format.json { render json: @shipping_box.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /shipping_boxes/1
      # DELETE /shipping_boxes/1.json
      def destroy
        @shipping_box = ShippingBox.find(params[:id])
        @shipping_box.destroy

        respond_to do |format|
          format.html { redirect_to admin_shipping_boxes_url }
          format.json { head :no_content }
        end
      end
    end
  end
end
