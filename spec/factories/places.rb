FactoryBot.define do
  factory :place do
    name        "Hotel Hilton Paris"
    long        2.558291
    lat         49.010519
    capacity    650
    total_price 3250000
    unit_price  5000
    street      "Aeroport Charles de Gaule"
    zipcode     "95000"
    city        "Paris"
    country     "France"
    description "Situé entre les trois terminaux de l’aéroport,
                 et à quelques minutes à pied de la gare RER,
                 le Hilton Paris Charles de Gaulle Airport met tout en oeuvre pour faire
                 de vos voyages des moments inoubliables.
                 Architecture aérée et lumineuse, chambres confortables et spacieuses,
                 gastronomie raffinée, personnel à l’écoute du moindre de vos besoins. "
    note         4.5
    note_count   10
  end
end
