const things = [
    "can of coke",
    "cat",
    "car",
    "dad",
    "Santa",
    "brown object",
    "bloke",
    "man",
    "murderer",
    "homosexual",
    "trans guy",
    "teenager",
    "mum",
    "terrorist",
    "dog",
    "hero",
    "teenage son",
    "can opener",
    "girl",
    "trans girl",
    "teen",
    "youngster",
    "hypocrite",
    "fortnite sweat",
    "gamer",
    "rock",
    "scientist",
    "monster",
    "racist",
    "groin",
    "piece of junk",
    "deer",
    "bike",
    "fish",
    "moose",
    "log",
    "planet",
    "tree",
    "thing",
    "[REDACTED]",
    "stranger",
    "girlfriend",
    "boyfriend",
    "family",
    "morbius",
    "Tesla",
    "skateboard",
    "British Monarch",
    "****head",
    "paedophile",
    "snail",
    "grandmother",
    "grandfather",
    "mother",
    "father",
    "shirt",
    "governor",
    "teacher",
    "sister",
    "brother",
    "village",
    "city",
    "trainer",
    "Godlike being",
    "programmer",
    "Arch user",
    "iPod",
    "iPad",
    "iPhone",
    "penis face",
    "politician",
    "absolute legend",
    "couple"
]

const namepref = [
    "Someone named",
    "A person named",
    "Someone called",
    "A person called",
    "My friend",
    "My colleague",
    "This random joker named",
    "This random joker called",
    "An individual named",
    "An individual called",
    "A certain individual that goes by the name of"
]

const hasbeens = [
    "has been",
    "has just been",
    "has just gotten",
    "was",
    "was just",
    "just got"
]

const verbs = [
    "stolen",
    "hit",
    "murdered",
    "seduced",
    "killed",
    "punched",
    "licked",
    "purchased",
    "found guilty of assault",
    "opened",
    "abused",
    "poked",
    "absolutely incinerated",
    "bonked",
    "nonced on",
    "drained",
    "pillaged",
    "ignored",
    "rejected",
    "armed",
    "[CENSORED]",
    "twisted",
    "investigated",
    "cleaned",
    "married",
    "morbed",
    "nibbled",
    "ratio'd",
    "done good",
    "buggered",
    "found out",
    "KO'd",
    "severely injured",
    "cut open",
    "sliced open",
    "chopped down the middle",
    "hit right where it hurts",
    "beaten",
    "mounted"
]

const adjectives = [
    "A green",
    "A mysterious",
    "My",
    "The neighbourhood",
    "My friend's",
    "An extremely hot",
    "This guy's",
    "A gay",
    "A gang consisting of a brutal killer and a terrifying",
    "My cousin's daughter's teacher's",
    "A solid",
    "A racist",
    "The country's best",
    "An abusive",
    "A sweaty",
    "This one massive",
    "A fat",
    "A mad",
    "A worthless",
    "A flat",
    "A slippery",
    "A disabled",
    "This here",
    "That there",
    "An incredibly sexy",
    "The most powerful ever",
    "A [REMOVED]",
    "A random",
    "A pretty cool",
    "A massive",
    "A tiny",
    "A small",
    "A territorial",
    "A super fast",
    "A complicated",
    "An object-oriented",
    "A keen",
    "A handsome",
    "A fearless",
    "An extra-extra-extra large",
    "An uncultured",
    "An arrogant",
    "An aristocratic",
    "A penis-faced",
    "A stupid",
    "A snail-like",
    "An esoteric",
    "A gay couple consisting of a man and this",
    "A gay couple consisting of a woman and this",
    "A deranged"
]
    
const punctuation = [
    "!",
    ".",
    ".",
    ".",
    ".",
    ".",
    "!?",
    "..?",
    "...",
    "; More at 6!",
    ", who refused to comment on the matter.",
    ". Oh no! Anyway...",
    ", which is terrifying, but I don't care.",
    "; What an absolute pillock!",
    ", which is a total waste of time.",
    ". OMG!",
    ". I wish things like this were more common.",
    ". Holy ****! What a *****!",
    ". I'm not even sure what to say.",
    ". Holy moly guacamole!",
    "; Read on with premium!",
    "..? That's so weird!",
    ". Now that's a real one.",
    ", like WTF!?",
    ". There goes my faith in humanity!",
    ", like can you be more stupid?",
    ". Pfft."
]

const writtenby_f = [
    "Bob",
    "William",
    "John",
    "Robert",
    "Michael",
    "Blake",
    "James",
    "David",
    "Joseph",
    "Lord",
    "Thomas",
    "Christopher",
    "Daniel",
    "Matthew",
    "Anthony",
    "Donald",
    "Asher",
    "Mark",
    "Paul",
    "Steven",
    "Andrew",
    "Kenneth",
    "George",
    "Joshua",
    "Brian",
    "my colleague",
    "Isabelle",
    "Caroline",
    "Natalie",
    "Nathan",
    "Edward",
    "Juan",
    "Kevin",
    "Jason",
    "Tim",
    "Sam",
    "Barack",
    "Bill",
    "Boris",
    "A.",
    "B.",
    "C.",
    "D.",
    "E.",
    "F.",
    "G.",
    "H.",
    "I.",
    "J.",
    "K.",
    "L.",
    "M.",
    "N.",
    "O.",
    "P.",
    "Q.",
    "R.",
    "S.",
    "T.",
    "U.",
    "V.",
    "W.",
    "X.",
    "Y.",
    "Z.",
    "Purbyfurk",
    "Bilbo",
    "J. P.",
    "Jackson"
]

const writtenby_l = [
    "Robinson",
    "Parker",
    "Smith",
    "Jones",
    "Williams",
    "Brown",
    "Davis",
    "Miller",
    "Blake",
    "Wilson",
    "Moore",
    "Taylor",
    "Anderson",
    "Thomas",
    "Jackson",
    "White",
    "Bateman",
    "Harris",
    "Martin",
    "Thompson",
    "Garcia",
    "Martinez",
    "Hopley",
    "Cook",
    "Rogers",
    "Reed",
    "Trump",
    "Clinton",
    "Bush",
    "Obama",
    "Putin",
    "The Great",
    "Winston",
    "Shnurdenburgh",
    "Chestnutt",
    "Ray"
]

proc genName(): string =
    return sample(writtenby_f) & " " & sample(writtenby_l)

const tips = [
    "#1: Dont be an asshole.",
    "#2: Type `h` for some help.",
    "#3: Type `v` to see the version.",
    "#4: Type harder!",
    "#5: It's nice to be nice.",
    "#6: Use ctrl+c to quit, if you find me too annoying.",
    "#7: Switched from Python to Nim, feels good!",
    "#8: Premium is pretty cool, you should try it!",
    "#9: You can look at the source code on GitHub to see how the program works.",
    "#10: There are some useful commands in the help menu, just type `h`.",
    "#11: Some of the words used were generated by GitHub Copilot, but I wrote most of them.",
    "#12: You can contribute to the Cahp github repository by sending me a pull request!",
    "#13: The word `cahp` used to stand for something, but I'm not telling you what it was.",
    "#14: There are way too many tips here.",
    "#15: I miss premium.",
    "#16: This program has so many more features than when it was first written.",
    "#17: I'm adding new words all the time, take a look at the GitHub repository!",
    "#18: When's the last time you went outside?",
    "#19: You used to be able to toggle these tips. Those were the days...",
    "#20: These tips are common because there are so many here.",
    "#21: The world isn't nice at the moment, you can chill here for a while if you'd like.",
    "#22: I stopped updating cahp2 because I found it boring.",
    "#23: Bored yet? Or hardly started?",
    "#24: Working hard or hardly working?",
    "#25: I added colours to Cahp recently, do you like it?",
    "#26: All this breaking news is *breaking* my brain! Haha!",
    "#27: I know a guy, who knows a guy, who knows a guy.",
    "#28: Technoblade never dies.",
    "#29: Colourful words are always a good idea.",
    "#30: Colours are cool.",
    "#31: I use Arch btw.",
    "#32: Old news is the best news.",
    "#33: I'm a big fan of the word `cahp`.",
    "#34: Ya like jazz?",
    "#35: I might start purposely adding bugs to my code to make it more interesting.",
    "#36: OH THE MISERY",
    "#37: You can always type `c` to clear the screen.",
    "#38: Type `r` to clear the screen every time you press enter, it's great!",
    "#39: EVERYBODY WANTS TO BE MY ENEMY",
    "#40: Did you know tha A squared plus B squared is C squared?",
    "#41: Take that as you will.",
    "#42: The world is a dangerous place.",
    "#43: You ever see a ghost?",
    "#44: @everyone",
    "#45: DuckDuckGo is a great search engine.",
    "#46: i'M a BiG fAn Of ThE wOrD `cAhP`",
    "#47: balls lmao",
    "#48: There are a lot of tips here.",
    "#49: Eventually, I'll rewrite Cahp in Nim, and the world will be a better place. UPDATE: I rewrote Cahp in Nim, and the world is a better place.",
    "#50: **** you, you ******* **********. I hope you ******* **** yourself.",
    "#51: SPARE THE SYMPATHY",
    "#52: What is this mysterious Premium everyone keeps talking about?",
    "#53: Premium used to exist in the Python version of Cahp, but it doesn't anymore.",
    "#54: https://github.com/ltblem/cahp",
    "#55: Sometimes cats will generate. I think they're cute."
]

const goodbies = [
    "Goodbye!",
    "Bye!",
    "See you later!",
    "See you!",
    "Laters!",
    "Hope you had fun!",
    "Hope you enjoyed!",
    "Have a nice day!",
    "Goodnight!",
    "Good luck!",
    "See ya!",
    "Cheers!",
    "Cheerio!",
    "See you later, alligator!",
    "In a while, crocodile!"
]

const months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
]

const cats =[
"""
|\---/|
| o_o |
 \_^_/
""",
"""
 /\_/\
( o.o )
 > ^ <
""",
"""
           /)
          ((
           ))
      ,   //,
     /,\="=/,\
    /` d   b `\
   =\:.  Y  .:/=
    /'***o***'\
   ( (       ) )
   (,,)'-=-'(,,)
""",
"""
  )\._.,--....,'``.
 /,   _.. \   _\  (`._ ,.
`._.-(,_..'--(,_..'`-.;.'

""",
"""
  |\      _,,,---,,_
  /,`.-'`'    -.  ;-;;,_
 |,4-  ) )-,_..;\ (  `'-'
'---''(_/--'  `-'\_)
""",
"""
  |\      _,,,,--,,_
  /,`.-'`'    -,  ;-;,
 |,4-  ) ),,__ ) /;  ;;
'---''(.'--'  (.'`.) `'
""",
"""
  |\      _,,,,--,,_
  /,`.-'`'    -,  \-;,
 |,4-  ) ),,__ ,\ (  ;;
'---''(.'--'  `-'`.)`'
""",
"""
  |\      _,,,--,,_  ,)
  /,`.-'`'   -,  ;-;;'
 |,4-  ) )-,_ ) /\
'---''(_/--' (_/-'
""",
"""
          /|_
         /  ,\
      .-'   _,'
     / _   |
    /   )_ |
,=='`.____)_)
""",
"""
               _ |\_
               \` ..\
          __,.-" =__Y=
        ."        )
  _    /   ,    \/\_
 ((____|    )_-\ \_-`
 `-----'`-----` `--`
"""
]

const catnames_f = [
    "Kitty",
    "Mittens",
    "Fluffy",
    "Cuddles",
    "Bella",
    "Oscar",
    "Max",
    "Lucy",
    "Molly",
    "Luna",
    "Sophie",
    "Chloe",
    "Mia",
    "Mr.",
    "Mrs.",
    "Lady",
    "Lord"
]

const catnames_l = [
    "Fantastico",
    "Fluffers",
    "The Cute",
    "Crumbles",
    "Fluffs"
]


const helppage: string = """
Cahp - A LetThereBeLemons Creation
=====
enter - generate new phrase
h - this help page
c - clear the screen
r - toggle redraw mode, clearing the screen every time a new story is generated
v - print the compile date

CTRL+C to exit
"""


var
    creset: string = "\x1b[0m"
    cbold: string = "\x1b[1m"
    cgreen: string = "\x1b[32m"
    cred: string = "\x1b[31m"
    cblue: string = "\x1b[34m"
    cyellow: string = "\x1b[33m"
    cpurple: string = "\x1b[35m"
    ccyan: string = "\x1b[36m"
    cwhite: string = "\x1b[37m"
    cgray: string = "\x1b[90m"
    cmagenta: string = "\x1b[95m"
    corange: string = "\x1b[38;5;208m"
    cbrown: string = "\x1b[38;5;214m"
    
    catcolours = [ccyan, cmagenta, corange, cbrown]