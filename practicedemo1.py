class arbeit:
    def __init__(self, unternehmen, gehalt, position, datum, webseite):
        self.unternehmen = unternehmen
        self.gehalt = gehalt
        self.position = position
        self.datum = datum
        self.webseite = webseite
        self.email = position + "@" + unternehmen + ".com"

    def die_details(self):
        return '{} {} {} {}'.format(self.unternehmen, self.gehalt, self.position, self.datum)


bewerbung1 = arbeit("lancom", 45000, "Prüfingenieur", "ersten juli", "scotty4hotty")
bewerbung2 = arbeit("debeka", 46000, "Prüfingenieur", "ersten mai", "stellenganzen.de")
bewerbung3 = arbeit("thinkcell", 47000, "Prüfingenieur", "ersten januar", "linkedin")

print(bewerbung1.email)

print(arbeit.die_details(bewerbung1))
