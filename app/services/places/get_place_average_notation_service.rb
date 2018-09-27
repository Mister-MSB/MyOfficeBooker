class Places::GetPlaceAverageNotationService
  include Service

  def initialize place:
    @place        = place
    @note_counter = 0
    @note_total   = 0
  end

  def call
    fill_place_notes
    send_note
  end

  private

  def fill_place_notes
    @place.notes.each do |note|
      @note_total += note.note
      @note_counter += 1
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
