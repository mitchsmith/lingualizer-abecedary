class SegmentsController < ApplicationController
    def new
    end

    def create
        @segment = Segment.new(segment_params)
 
        @segment.save
        redirect_to @segment
    end

    def edit
        @segment = Segment.find(params[:id])
    end

    def update
        @segment = Segment.find(params[:id])
 
        if @segment.update(segment_params)
            redirect_to @segment
        else
            render 'edit'
        end
    end

    def show
        @segment = Segment.find(params[:id])
    end

    def index
        @segments = Segment.all
    end
    
    private
        def segment_params
            params.require(:segment).permit(:ipa_symbol,
                                            :sampa_symbol,
                                            :cmudict_symbol,
                                            :name,
                                            :description,
                                            :ipa_place,
                                            :ipa_type,
                                            :ipa_manner,
                                            :sylabic,
                                            :consonantal,
                                            :aproximant,
                                            :sonorant,
                                            :voice,
                                            :spread_glotis,
                                            :constricted_glotis,
                                            :continuant,
                                            :nasal,
                                            :strident,
                                            :lateral,
                                            :delayed_release,
                                            :labial,
                                            :round,
                                            :coronal,
                                            :anterior,
                                            :distributed,
                                            :dorsal,
                                            :high,
                                            :low,
                                            :back,
                                            :tense,
                                            :radical,
                                            :laryngeal)
        end
end
