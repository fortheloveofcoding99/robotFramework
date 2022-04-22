
class musicLibrary:

    def __init__(self, l, s):
        self.leid = l
        self.sangerin = s

    def display(self):
        print("Welches lied " + (self.leid))
        print("Wer is der sanger " + (self.sangerin))


leid = ""

sangerin = ""



obj = musicLibrary("mein Lied", "Berge")


obj.display()



