# encoding: utf-8
class Person
  # NOTE: Descriptions are in markdown (http://daringfireball.net/projects/markdown/)
  @people = [
    {
      :name => "Toby Hunt",
      :title => "CEO",
      :image => "/images/mug-shots/toby-2.png",
      :description => "Toby studied computer science at university, did a spell in the corporate world, then co-founded [pebble.it](http://pebbleit.com/) in 2006 and [pebble {code}](http://pebblecode.com/) in 2010. He loves travel, funk music and a healthy lifestyle (at least most of the time).",
      :website => "http://thatsinthebook.com",
      :twitter => "http://twitter.com/tobyhunt",
      :tumblr_name => "thatsinthebook"

    },
    {
      :name => "George Ornbo",
      :title => "Creative Director",
      :image => "/images/mug-shots/george.png",
      :description => "George is a Ruby and JavaScript developer with a strong interest in web browsers and applications. When not hacking at a terminal he enjoys making things in the kitchen and a bit of cricket. George is currently writing [Sams teach yourself Node.js in 24 hours](http://nodejsbook.io/).",
      :website => "http://shapeshed.com",
      :github => "https://github.com/shapeshed",
      :twitter => "http://twitter.com/shapeshed",
      :tumblr_name => "shapeshed"
    },
    {
      :name => "Alex Butcher",
      :title => "Technical Director",
      :image => "/images/mug-shots/alex.png",
      :description => "After graduating from Durham in computer science, Alex worked in a range of software engineering and architecture roles, covering manufacturing integration, financial services and online gaming before co-founding pebble {code} in 2010. A long time advocate of functional programming and C#, he also has a dangerous obsession with all things cycling.",
      :twitter => "http://twitter.com/alexbutcher",
      :tumblr_name => "abutcher"
    },
    {
      :name => "Mark Durrant",
      :title => "UI/UX Designer",
      :image => "/images/mug-shots/mark.png",
      :description => "After spending several years working for charities, Mark managed to get himself a degree in graphic design. He's always been interested in technology and the web and has found pebble {code} the perfect place to pursue these interests. Mark is a bit of a geek and spends his spare time with comics, video games, anime and beer.",
      :website => "http://markdurrant.co.uk",
      :github => "https://github.com/markdurrant",
      :tumblr_name => "markdurrant"
    },
    {
      :name => "Matt Ward",
      :title => "Senior Software Developer",
      :image => "/images/mug-shots/matt.png",
      :description => "Matt's first real dive into programming was with COMAL, a language unheard of outside Scandinavia. He used it to create a program to predict the results of football matches, but sadly this did not make him a millionaire. In his spare time he works on [SharpDevelop](http://www.icsharpcode.net/OpenSource/SD/), an open source integrated development environment written in C#.",
      :website => "http://community.sharpdevelop.net/blogs/mattward/",
      :github => "https://github.com/icsharpcode/SharpDevelop",
      :twitter => "http://twitter/SharpDevelop",
      :tumblr_name => "mattward"
    },
    {
      :name => "Vincent Martínez",
      :title => "Software Developer",
      :image => "/images/mug-shots/vince.png",
      :description => "After studying software engineering in Valencia and a brief experience in the ugly world of platform dependent C code and libraries, Vincent moved to the web, mainly working in Ruby and JavaScript. Vincent admires simplicity and minimalism in design. When not coding, he enjoys photography, sunny days when they come and, of course, Bar&ccedil;a.",
      :twitter => "http://twitter.com/eyko",
      :github => "http://github.com/eyko",
      :tumblr_name => "eyko"
    },
    {
      :name => "Tak Tran",
      :title => "Software Developer",
      :image => "/images/mug-shots/tak.png",
      :description => "A UK-born, Sydney-raised web developer who's predominantly embedded in the world of Ruby and other (often hipster) related technologies. Tak finds great joy in discussing software craftsmanship, food and universal ideas.",
      :twitter => "http://twitter.com/zlog",
      :github => "https://github.com/taktran",
      :tumblr_name => "tutaktran"
    },
    {
      :name => "Joseph Jeganathan",
      :title => "Software Developer",
      :image => "/images/mug-shots/joseph.png",
      :description => "Joseph is a .NET techie with a masters in enterprise software engineering. He loves to take on any challenge, focusing on leading edge technologies and algorithms that deliver the very best solutions. Aside from his life as a programmer, he is an athlete and good cricketer.",
      :website => "http://josephjeganathan.com",
      :github => "https://github.com/josephjeganathan",
      :twitter => "http://twitter.com/josephjegan",
      :tumblr_name => "josephjeganathan"
    },
    {
      :name => "Simon Dickson",
      :title => "Software Developer",
      :image => "/images/mug-shots/simon.png",
      :description => "After graduating from the University of Hull with an MEng in computer science in 2010, Simon worked at a photographic software house based in Reigate, until joining pebble {code}. He works primarily in C#, with a particular fondness for Linq, and is very into his Scotch whiskey.",
      :twitter => "https://twitter.com/simonhdickson",
      :github => "https://github.com/simonhdickson"
    },
    {
      :name => "Daniel Bradley",
      :title => "Software Developer",
      :image => "/images/mug-shots/dan.png",
      :description => "After graduating as a software engineer in London, Daniel got stuck into developing products for the media sector. He's an open source advocate and author of the cloud-based [Plywood](https://github.com/danielrbradley/Plywood) software deployment system. Outside of programming, he's a drummer and keen photographer.",
      :website => "http://danielbradley.net",
      :twitter => "http://twitter.com/danielrbradley",
      :github => "https://github.com/danielrbradley",
      :tumblr_name => "danielrbradley"
    },
    {
      :name => "Akash Chopra",
      :title => "Technical Architect",
      :image => "/images/mug-shots/akash.png",
      :description => "It took a PhD in Computational Physics for Akash to figure out that he enjoyed the \"computational\" part more than the physics. That revelation eventually lead, via an extended spell developing stochastic financial risk modelling software, to pebble {code}. Outside work he loves food, cycling and squash.",
      :website => "http://www.itworksonmymachine.co.uk",
      :twitter => "http://twitter.com/akashchopra"
    },
    {
      :name => "Andrea Miskulin",
      :title => "Office Assistant",
      :image => "/images/mug-shots/andrea.png",
      :description => "Prior to her role at pebble {code}, Andrea successfully facilitated a director and team in the media and creative industry. She is now responsible for pebble {code}'s office administration - which she does with a smile and plenty of enthusiasm.<br><br>In her spare time, Andrea enjoys creating gourmet dinners, smoothies, going to keep-fit classes, music and movies."
    },
    {
      :name => "Gayle Smith",
      :title => "HR Consultant",
      :image => "/images/mug-shots/gayle.png",
      :description => "Long time pebbler Gayle is currently studying to become a latin teacher, but will still lend us her HR superpowers from time to time - she is still very much a part of the big happy family we call pebble."
    },
    {
      :name => "Tom Squires",
      :title => "Software Developer",
      :image => "/images/mug-shots/tom.png",
      :description => "Tom is a .NET developer, initially starting out building CMS websites, but quickly moving into back-end systems and APIs. In his spare time he enjoys computer gaming and brewing his own real ale. Tom also loves music and often frequents festivals and gigs."
    },
    {
      :name => "James Wallace",
      :title => "Software Developer",
      :image => "/images/mug-shots/james.png",
      :description => "James graduated from Heriot-Watt with a 1st in Computer Science and was immediately employed by a relatively small company in Edinburgh developing financial risk modelling software. Two years later, James found himself leading a small team of developers within a corporation of 4000+ and realised that he hadn't written code in months. James yearned to return to the truly rockstar life of the software developer, then he found pebble..."
    },
    {
      :name => "Sava Varadzhakov",
      :title => "Software Developer",
      :image => "/images/mug-shots/sava.png",
      :description => "Once Sava discovered the geek world of software engineering, he was fool enough to abandon his childish movie superstar dream. Currently he is in love with new technologies and software development concepts, but he is often cheating on them with sports, whiskey and travelling.",
      :github => "https://github.com/varadzhakov"
    },
    {
      :name => "Plamen Penchev",
      :title => "Software Developer",
      :image => "/images/mug-shots/plamen.png",
      :description => "Located in Sofia, Bulgaria, Plamen has been developing .NET applications since 2007 - all the time fighting against all his open-source and Linux-using friends - but the power is on his side!<br><br>Plamen's passion is the web, because of all the new powerful technology coming out every single day. Some of his mottos are : &quot;Never stop learning&quot; and &quot;Don't worry, be happy&quot;.<br><br>He likes listening to all kinds of music and tries to play some of it on his guitar. In his spare time you can see him playing table tennis, dancing tango with his girlfriend, riding a bike and having fun with his friends (but not those with Linux installed on their machines :p ).",
      :twitter => "https://twitter.com/Spako7",
      :gitHub => "https://github.com/ppenchev"
    },
    {
      :name => "Nathan Evans",
      :title => "Software Developer",
      :image => "/images/mug-shots/nathan.png",
      :description => "Nathan is an extremely passionate software developer with frequent bursts of creativity. He spent his early teenage years (which fortuitously coincided with the birth of the Web) building an online business that successfully sold his software creations as &quot;shareware&quot;.<br><br>Nathan then graduated with a 1st in Computer Science and went on to invest an extremely productive six years in a small successful start-up based in Cambridge. As its technical co-founder, this is where Nathan cut his teeth as an enterprise .NET developer. ",
      :website => "http://nbevans.wordpress.com/",
      :twitter => "http://twitter.com/nbevans",
      :github => "http://github.com/nbevans"
    },
    {
      :name => "Andy Wardle",
      :title => "Senior Software Developer",
      :image => "/images/mug-shots/andy.png",
      :description => "Andy is a .NET developer with experience dating back to the dark days of .NET 1.1, thankfully only for a very short while. His experience spans the full stack going from MVC, Service Bus, WCF to SQL Server. Outside of work he has a bit of an obsession with football and leads a relatively active lifestyle trying to fit in rock climbing, golf and other sports around going to the pub."
    },
    {
      :name => "Sven Lito",
      :title => "Senior Software Developer",
      :image => "/images/mug-shots/sven.png",
      :description => "Sven studied computer science at university and then worked as a systems engineer at some fortune 500 companies in Germany. After deciding to move to the UK, and on the look out for new adventures, he eventually started working in the web industry. Sven also helps maintain the well known Node.js module <a href='https://github.com/felixge/node-formidable'>Formidable</a>.<br><br>Sven enjoys green tea, monospaced font, JavaScript, Cycling and Rock Climbing.",
      :website => "http://svenlito.com/",
      :twitter => "https://twitter.com/svenlito",
      :github => "https://github.com/svnlto"
    },
    {
      :name => "Karen Williams",
      :title => "Software Developer",
      :image => "/images/mug-shots/karen.png",
      :description => "Karen has reinvented herself several times. Firstly a Casualty Nurse, then a Teaching Assistant, then a Maths Teacher. Karen started a Maths degree with The Open University but got sidetracked when she did a course in IT and discovered she could do JavaScript.<br><br> Realising that her love of logic puzzles could be satisfied by writing code, the Maths degree was dropped and changed to Computer Science. After 4 and a half years of juggling work, study and family, Karen achieved her Open University degree and found rewarding work as a developer - firstly Java, now C#.NET.<br><br> In her spare time, Karen has a passion for treading the boards and has recently been Charles Dickens' daughter, a Mexican terrified of chickens and a Scary Clown.",
      :github => "https://github.com/KarenWilliams"
    },
    {
      :name => "John Mildinhall",
      :title => "User-Centered Design Specialist",
      :image => "/images/mug-shots/john.png",
      :description => "John is obsessed with making beautiful software that truly serves the needs of the user. He is a strong advocate of user-centred design and has led projects in fields as diverse as risk management, nature conservation and electricity grid management. Outside of work, John's main occupation is music - he plays the guitar, piano and bassoon."
    },
    {
      :name => "Rytis Bieliunas",
      :title => "Software Developer",
      :image => "/images/mug-shots/rytis.png",
      :description => "Rytis started programming as soon as he could get his hands on a computer and has not stopped since. He has worked in industries as diverse as accounting and games. Rytis loves .NET, and hates TFS."
    },
    {
      :name => "Dom Crossley",
      :title => "Senior Software Developer",
      :image => "/images/mug-shots/dom.png",
      :description => "After studying Software Engineering at Sheffield Hallam University, Dominic moved into the world of .NET, working mainly in C#.  His professional interests have taken him outside of the .NET ecosystem and currently include Haskell, the Rosylyn compiler-as-a-service, and Intel's Transaction Synchronization Extensions (TSX).",
      :github => "https://github.com/flashcurd"
    }
  ]

  def self.all
    @people
  end

  def self.slug_index(slug)
    @people.index {|p| p[:name].to_slug == slug}
  end

  def self.random_person_index
    rand(@people.length)
  end

  def self.slug_exists?(slug)
    @people.select {|p| p[:name].to_slug == slug}.length > 0
  end
end