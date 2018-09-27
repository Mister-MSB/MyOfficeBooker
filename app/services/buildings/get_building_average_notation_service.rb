class Buildings::GetBuildingAverageNotationService
  include Service

  def initialize building:
    @building     = building
    @note_counter = 0
    @note_total   = 0
  end

  def call
    fill_building_places_note
    send_note
  end

  private

  def fill_building_places_note
    @building.places.each do |place|
      place.notes.each do |note|
        @note_total += note.note
        @note_counter += 1
      end
    end
  end

  def send_note
    if @note_counter > 0
      (@note_total / @note_counter).round.to_i
    else
      0
    end
  end

end
