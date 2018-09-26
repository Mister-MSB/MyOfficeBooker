class Buildings::GetBuildingAverageNotationService
  include Service

  def initialize building:
    @building     = building
    @note_counter = 0
    @note_total   = 0
  end

  def call
    fill_building_places_note
    (@note_total / @note_counter).round.to_i
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

end
