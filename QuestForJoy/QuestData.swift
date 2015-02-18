//
//  QuestData.swift
//  QuestForJoy
//
//  Created by Stephen Winje on 1/23/15.
//  Copyright (c) 2015 Stephen Winje. All rights reserved.
//

import Foundation

let appURL = "From the \"Quest for Joy\" app: http://appstore.com/QuestForJoy.  Copyright ©2015 Extendant Software Inc.\n\n"

let myApp = "Quest for Joy"
let url = "http://appstore.com/QuestForJoy"
var attrString = NSMutableAttributedString(string: myApp)
// the entire string
var range:NSRange = NSMakeRange(0, attrString.length)

// Copyright of the headings and comments text belongs to John Piper.
// The recommendation at bottom of http://www.desiringgod.org/articles/quest-for-joy
// says, "Please include the following statement on any distributed copy:
// By John Piper. ©2015 Desiring God Foundation. Website: desiringGod.org"
let copyrightText = "\n\nText by John Piper. ©2015 Desiring God Foundation. Website: http://www.desiringgod.org/"

let copyrightESV = "\n\nScripture taken from The Holy Bible, English Standard Version. Copyright ©2001 by Crossway Bibles, http://www.crosswaybibles.org, a publishing ministry of Good News Publishers. Used by permission. All rights reserved.\(copyrightText)"

let copyrightKJV = "\n\nScripture quotations from The Authorized (King James) Version. Rights in the Authorized Version in the United Kingdom are vested in the Crown. Reproduced by permission of the Crown’s patentee, Cambridge University Press.\(copyrightText)"

let copyrightNIV = "\n\nScripture taken from the Holy Bible, New International Version. Copyright ©1973, 1978, 1984 by International Bible Society. Used by permission of International Bible Society. NIV and New International Version are trademarks registered in the United States Patent and Trademark office by International Bible Society.\(copyrightText)"

let copyrightFrench = "\n\nLes citations bibliques sont tirées des versions :\n\nLa Sainte Bible – Nouvelle version second révisée, dite « Colombe », copyright © Société Biblique Française, BP 47- 95400 Villiers-le-Bel - France, 1978.\n\nLa Bible en Français Courant – Version révisée 1997.  copyright © Société Biblique Française, BP 47- 95400 Villiers-le-Bel – France\n\nVersion DARBY Copyright© 1991. Bible et Publications Chrétiennes, Valence - France\(copyrightText)"

let copyrightGerman = "\n\n\nBibelzitate sind der Lutherbibel 1984 in neuer Rechtschreibung entnommen.\n\nVon John Piper. Übersetzung: Michael T. Schmid. © Desiring God. Webseite: desiringGod.org"

let copyrightData: [String: String] = [
    "English-ESV": "\n\nScripture taken from The Holy Bible, English Standard Version. Copyright ©2001 by Crossway Bibles, http://www.crosswaybibles.org, a publishing ministry of Good News Publishers. Used by permission. All rights reserved.\(copyrightText)",

    "English-KJV": "\n\nScripture quotations from The Authorized (King James) Version. Rights in the Authorized Version in the United Kingdom are vested in the Crown. Reproduced by permission of the Crown’s patentee, Cambridge University Press.\(copyrightText)",

    "English-NIV": "\n\nScripture taken from the Holy Bible, New International Version. Copyright ©1973, 1978, 1984 by International Bible Society. Used by permission of International Bible Society. NIV and New International Version are trademarks registered in the United States Patent and Trademark office by International Bible Society.\(copyrightText)",

    "French": "\n\nLes citations bibliques sont tirées des versions :\n\nLa Sainte Bible – Nouvelle version second révisée, dite « Colombe », copyright © Société Biblique Française, BP 47- 95400 Villiers-le-Bel - France, 1978.\n\nLa Bible en Français Courant – Version révisée 1997.  copyright © Société Biblique Française, BP 47- 95400 Villiers-le-Bel – France\n\nVersion DARBY Copyright© 1991. Bible et Publications Chrétiennes, Valence - France\(copyrightText)",
    
    "German": "\n\nBibelzitate sind der Lutherbibel 1984 in neuer Rechtschreibung entnommen.\n\nVon John Piper. Übersetzung: Michael T. Schmid. © Desiring God. Webseite: desiringGod.org",
    
    "Spanish": "\(copyrightText)"
]

var languages = [
    "English-ESV",
    "English-KJV",
    "English-NIV",
    "French",
    "German",
    "Spanish",
]


let newTruths: [String: [String]] = [
    "English": [
        "Did you know that God commands us to be glad?",
        "1) God created us for his glory",
        "2) Every human should live for God's glory",
        "3) All of us have failed to glorify God as we should",
        "4) All of us are subject to God's just condemnation",
        "5) God sent his only son Jesus to provide eternal life and joy",
        "6) The benefits purchased by the death of Christ belong to those who repent and trust him",
        "What should you do?"
    ],
    "Spanish": [
        "¿Sabía que Dios nos ordena buscar nuestra felicidad?",
        "1) Dios nos creó para su gloria.",
        "2) Todo ser humano debería vivir para la gloria de Dios.",
        "3) Ninguno de nosotros ha glorificado a Dios como debería.",
        "4) Todos nosotros estamos sujetos a la condenación justa de Dios.",
        "5) Dios mandó a su único Hijo, Jesús, para que podamos tener vida eterna y gozo.",
        "6) Los beneficios comprados por la muerte de Cristo le pertenecen a los que se arrepienten y confían en él.",
        "¿Qué debería hacer usted?",
    ]
]

let numberOfTruths = newTruths["English"]!.count

let english = "English"
let spanish = "Spanish"

let newQuestData: [String:[Quest]] = [
    "English-ESV": [
        // Same as NIV
        Quest(heading: "\(newTruths[english]![0])",
            scripture: "\n\n\"Delight yourself in the Lord and he will give you the desires of your heart.\" (Psalm 37:4)\n\n",
            comments: ""),
        // Same as NIV
        Quest(heading: "\(newTruths[english]![1])",
            scripture: "\n\n\"Bring my sons from afar and my daughters from the ends of the earth … whom I created for my glory.\" (Isaiah 43:6–7)\n\n",
            comments: "God made us to magnify his greatness - the way telescopes magnify stars. He created us to put his goodness and truth and beauty and wisdom and justice on display. The greatest display of God's glory comes from deep delight in all that he is. This means that God gets the praise and we get the pleasure. God created us so that he is most glorified in us when we are most satisfied in him."),
        // Different scripture than NIV
        Quest(heading: "\(newTruths[english]![2])",
            scripture: "\n\n\"So, whether you eat or drink, or whatever you do, do all to the glory of God.\" (1 Corinthians 10:31)\n\n",
            comments: "If God made us for his glory, it is clear that we should live for his glory. Our duty comes from his design. So our first obligation is to show God's value by being satisfied with all that he is for us. This is the essence of loving God (Matthew 22:37) and trusting him (1 John 5:3-4) and being thankful to him (Psalm 100:2-4). It is the root of all true obedience, especially loving others (Colossians 1:4-5)."),
        // Same as NIV
        Quest(heading: "\(newTruths[english]![3])",
            scripture: "\n\n\"All have sinned and fall short of the glory of God.\" (Romans 3:23)\n\n",
            comments: "What does it mean to \"fall short of the glory of God?\" It means that none of us has trusted and treasured God the way we should. We have not been satisfied with his greatness and walked in his ways. We have sought our satisfaction in other things, and treated them as more valuable than God, which is the essence of idolatry (Romans 1:21-23). Since sin came into the world we have all been deeply resistant to having God as our all-satisfying treasure (Ephesians 2:3). This is an appalling offense to the greatness of God (Jeremiah 2:12-13)."),
        // Different scripture in comments than NIV
        Quest(heading: "\(newTruths[english]![4])",
            scripture: "\n\n\"The wages of sin is death...\" (Romans 6:23)\n\n",
            comments: "We have all belittled the glory of God. How? By preferring other things above him. By our ingratitude, distrust and disobedience. So God is just in shutting us out from the enjoyment of his glory forever. \"They will suffer the punishment of eternal destruction, away from the presence of the Lord and from the glory of his might\" (2 Thessalonians 1:9).\n\nThe word \"hell\" is used in the New Testament fourteen times (see below)—twelve times by Jesus himself. It is not a myth created by dismal and angry preachers. It is a solemn warning from the Son of God who died to deliver sinners from its curse. We ignore it at great risk.\n\nIf the Bible stopped here in its analysis of the human condition, we would be doomed to a hopeless future. However, this is not where it stops...\n\n\nAppearances of the word \"hell\" in the New Testament\n\nBut I say to you that everyone who is angry with his brother will be liable to judgment; whoever insults his brother will be liable to the council; and whoever says, 'You fool!' will be liable to the hell of fire. (Matthew 5:22 Jesus speaking)\n\nIf your right eye causes you to sin, tear it out and throw it away. For it is better that you lose one of your members than that your whole body be thrown into hell. (Matthew 5:29 Jesus speaking)\n\nAnd if your right hand causes you to sin, cut it off and throw it away. For it is better that you lose one of your members than that your whole body go into hell. (Matthew 5:30 Jesus speaking)\n\nAnd do not fear those who kill the body but cannot kill the soul. Rather fear him who can destroy both soul and body in hell. (Matthew 10:28 Jesus speaking)\n\nAnd if your eye causes you to sin, tear it out and throw it away. It is better for you to enter life with one eye than with two eyes to be thrown into the hell of fire. (Matthew 18:9 Jesus speaking)\n\nWoe to you, scribes and Pharisees, hypocrites! For you travel across sea and land to make a single proselyte, and when he becomes a proselyte, you make him twice as much a child of hell as yourselves. (Matthew 23:15 Jesus speaking)\n\nYou serpents, you brood of vipers, how are you to escape being sentenced to hell? (Matthew 23:33 Jesus speaking)\n\nAnd if your hand causes you to sin, cut it off. It is better for you to enter life crippled than with two hands to go to hell, to the unquenchable fire. (Mark 9:43 Jesus speaking)\n\nAnd if your foot causes you to sin, cut it off. It is better for you to enter life lame than with two feet to be thrown into hell. (Mark 9:45 Jesus speaking)\n\nAnd if your eye causes you to sin, tear it out. It is better for you to enter the kingdom of God with one eye than with two eyes to be thrown into hell, (Mark 9:47 Jesus speaking)\n\nBut I will warn you whom to fear: fear him who, after he has killed, has authority to cast into hell. Yes, I tell you, fear him! (Luke 12:5 Jesus speaking)\n\nin Hades, being in torment, he lifted up his eyes and saw Abraham far off and Lazarus at his side. (Luke 16:23 Jesus speaking)\n\nAnd the tongue is a fire, a world of unrighteousness. The tongue is set among our members, staining the whole body, setting on fire the entire course of life, and set on fire by hell. (James 3:6 James speaking).\n\nFor if God did not spare angels when they sinned, but cast them into hell and committed them to chains of gloomy darkness to be kept until the judgment; (2 Peter 2:4 Peter speaking)"),
        // Different scripture and comments than NIV
        Quest(heading: "\(newTruths[english]![5])",
            scripture: "\n\n\"The saying is trustworthy and deserving of full acceptance, that Christ Jesus came into the world to save sinners...\" (1 Timothy 1:15)\n\n",
            comments: "The good news is that Christ died for sinners like us. And he rose physically from the dead to validate the saving power of his death and to open the gates of eternal life and joy (1 Corinthians 15:20). This means God can acquit guilty sinners and still be just (Romans 3:25-26). \"For Christ also suffered once for sins, the righteous for the unrighteous, that he might bring us to God\" (1 Peter 3:18). Coming home to God is where all deep and lasting satisfaction is found."),
        // Different scripture and comments than NIV
        Quest(heading: "\(newTruths[english]![6])",
            scripture: "\n\n\"Repent therefore, and turn again, that your sins may be blotted out.\" (Acts 3:19)\n\nBelieve in the Lord Jesus, and you will be saved.\" (Acts 16:31)\n\n",
            comments: "\"Repent\" means to turn from all the deceitful promises of sin. \"Faith\" means being satisfied with all that God promises to be for us in Jesus. \"Whoever believes in me,\" Jesus says, \"shall never thirst\" (John 6:35). We do not earn our salvation. We cannot merit it (Romans 4:4-5). It is by grace through faith (Ephesians 2:8-9). It is a free gift (Romans 3:24). We will have it if we cherish it above all things (Matthew 13:44). When we do that, God's aim in creation is accomplished: He is glorified in us and we are satisfied in him - forever."),
        // Different comments than NIV
        Quest(heading: "\(newTruths[english]![7])",
            scripture: "\n\nDoes this make sense to you?\n\nDo you desire the kind of gladness that comes from being satisfied with all that God is for you in Jesus? If so, then God is at work in your life.\n\n",
            comments: "Turn from the deceitful promises of sin. Call upon Jesus to save you from the guilt and punishment and bondage. \"Everyone who calls on the name of the Lord will be saved\" (Romans 10:13). Start banking your hope on all that God is for you in Jesus. Break the power of sin's promises by faith in the superior satisfaction of God's promises. Begin reading the Bible to find his precious and very great promises, which can set you free (2 Peter 1:3-4). Find a Bible-believing church and begin to worship and grow together with other people who treasure Christ above all things (Philippians 3:7).\n\nThe best news in the world is that there is no necessary conflict between our happiness and God's holiness. Being satisfied with all that God is for us in Jesus magnifies him as a great Treasure.\n\nYou make known to me the path of life; in your presence there is fullness of joy; at your right hand are pleasures forevermore. (Psalm 16:11)\(copyrightESV)"),
    ],
    "English-KJV": [
        
        Quest(heading: "\(newTruths[english]![0])",
            scripture: "\n\n\"Delight thyself also in the LORD: and he shall give thee the desires of thine heart.\" (Psalm 37:4)\n\n",
            comments: ""),
        
        Quest(heading: "\(newTruths[english]![1])",
            scripture: "\n\n\"Bring my sons from far, and my daughters from the ends of the earth … for I have created him for my glory.\" (Isaiah 43:6–7)\n\n",
            comments: "God made us to magnify his greatness - the way telescopes magnify stars. He created us to put his goodness and truth and beauty and wisdom and justice on display. The greatest display of God's glory comes from deep delight in all that he is. This means that God gets the praise and we get the pleasure. God created us so that he is most glorified in us when we are most satisfied in him."),
        
        Quest(heading: "\(newTruths[english]![2])",
            scripture: "\n\n\"Whether therefore ye eat, or drink, or whatsoever ye do, do all to the glory of God.\" (1 Corinthians 10:31)\n\n",
            comments: "If God made us for his glory, it is clear that we should live for his glory. Our duty comes from his design. So our first obligation is to show God's value by being satisfied with all that he is for us. This is the essence of loving God (Matthew 22:37) and trusting him (1 John 5:3-4) and being thankful to him (Psalm 100:2-4). It is the root of all true obedience, especially loving others (Colossians 1:4-5)."),
        
        Quest(heading: "\(newTruths[english]![3])",
            scripture: "\n\n\"For all have sinned, and come short of the glory of God.\" (Romans 3:23)\n\n",
            comments: "What does it mean to \"fall short of the glory of God?\" It means that none of us has trusted and treasured God the way we should. We have not been satisfied with his greatness and walked in his ways. We have sought our satisfaction in other things, and treated them as more valuable than God, which is the essence of idolatry (Romans 1:21-23). Since sin came into the world we have all been deeply resistant to having God as our all-satisfying treasure (Ephesians 2:3). This is an appalling offense to the greatness of God (Jeremiah 2:12-13)."),
        
        Quest(heading: "\(newTruths[english]![4])",
            scripture: "\n\n\"The wages of sin is death...\" (Romans 6:23)\n\n",
            comments: "We have all belittled the glory of God. How? By preferring other things above him. By our ingratitude, distrust and disobedience. So God is just in shutting us out from the enjoyment of his glory forever. \"Who shall be punished with everlasting destruction from the presence of the Lord, and from the glory of his power\" (2 Thessalonians 1:9).\n\nThe word \"hell\" is used in the New Testament fourteen times (see below)—twelve times by Jesus himself. It is not a myth created by dismal and angry preachers. It is a solemn warning from the Son of God who died to deliver sinners from its curse. We ignore it at great risk.\n\nIf the Bible stopped here in its analysis of the human condition, we would be doomed to a hopeless future. However, this is not where it stops...\n\n\nAppearances of the word \"hell\" in the New Testament\n\nBut I say unto you, That whosoever is angry with his brother without a cause shall be in danger of the judgment: and whosoever shall say to his brother, Raca, shall be in danger of the council: but whosoever shall say, Thou fool, shall be in danger of hell fire. (Matthew 5:22 Jesus speaking)\n\nAnd if thy right eye offend thee, pluck it out, and cast it from thee: for it is profitable for thee that one of thy members should perish, and not that thy whole body should be cast into hell. (Matthew 5:29 Jesus speaking)\n\nAnd if thy right hand offend thee, cut it off, and cast it from thee: for it is profitable for thee that one of thy members should perish, and not that thy whole body should be cast into hell. (Matthew 5:30 Jesus speaking)\n\nAnd fear not them which kill the body, but are not able to kill the soul: but rather fear him which is able to destroy both soul and body in hell. (Matthew 10:28 Jesus speaking)\n\nAnd if thine eye offend thee, pluck it out, and cast it from thee: it is better for thee to enter into life with one eye, rather than having two eyes to be cast into hell fire. (Matthew 18:9 Jesus speaking)\n\nWoe unto you, scribes and Pharisees, hypocrites! for ye compass sea and land to make one proselyte, and when he is made, ye make him twofold more the child of hell than yourselves. (Matthew 23:15 Jesus speaking)\n\nYe serpents, ye generation of vipers, how can ye escape the damnation of hell? (Matthew 23:33 Jesus speaking)\n\nAnd if thy hand offend thee, cut it off: it is better for thee to enter into life maimed, than having two hands to go into hell, into the fire that never shall be quenched. (Mark 9:43 Jesus speaking)\n\nAnd if thy foot offend thee, cut it off: it is better for thee to enter halt into life, than having two feet to be cast into hell, into the fire that never shall be quenched. (Mark 9:45 Jesus speaking)\n\nAnd if thine eye offend thee, pluck it out: it is better for thee to enter into the kingdom of God with one eye, than having two eyes to be cast into hell fire (Mark 9:47 Jesus speaking)\n\nBut I will forewarn you whom ye shall fear: Fear him, which after he hath killed hath power to cast into hell; yea, I say unto you, Fear him. (Luke 12:5 Jesus speaking)\n\nAnd in hell he lift up his eyes, being in torments, and seeth Abraham afar off, and Lazarus in his bosom. (Luke 16:23 Jesus speaking)\n\nAnd the tongue is a fire, a world of iniquity: so is the tongue among our members, that it defileth the whole body, and setteth on fire the course of nature; and it is set on fire of hell. (James 3:6 James speaking).\n\nFor if God spared not the angels that sinned, but cast them down to hell, and delivered them into chains of darkness, to be reserved unto judgment; (2 Peter 2:4 Peter speaking)"),
        
        Quest(heading: "\(newTruths[english]![5])",
            scripture: "\n\n\"This is a faithful saying, and worthy of all acceptation, that Christ Jesus came into the world to save sinners...\" (1 Timothy 1:15)\n\n",
            comments: "The good news is that Christ died for sinners like us. And he rose physically from the dead to validate the saving power of his death and to open the gates of eternal life and joy (1 Corinthians 15:20). This means God can acquit guilty sinners and still be just (Romans 3:25-26). \"For Christ also hath once suffered for sins, the just for the unjust, that he might bring us to God\" (1 Peter 3:18). Coming home to God is where all deep and lasting satisfaction is found."),
        
        Quest(heading: "\(newTruths[english]![6])",
            scripture: "\n\n\"Repent ye therefore, and be converted, that your sins may be blotted out.\" (Acts 3:19)\n\nBelieve on the Lord Jesus Christ, and thou shalt be saved.\" (Acts 16:31)\n\n",
            comments: "\"Repent\" means to turn from all the deceitful promises of sin. \"Faith\" means being satisfied with all that God promises to be for us in Jesus. \"He that believeth on me,\" Jesus says, \"shall never thirst\" (John 6:35). We do not earn our salvation. We cannot merit it (Romans 4:4-5). It is by grace through faith (Ephesians 2:8-9). It is a free gift (Romans 3:24). We will have it if we cherish it above all things (Matthew 13:44). When we do that, God's aim in creation is accomplished: He is glorified in us and we are satisfied in him - forever."),
        
        Quest(heading: "\(newTruths[english]![7])",
            scripture: "\n\nDoes this make sense to you?\n\nDo you desire the kind of gladness that comes from being satisfied with all that God is for you in Jesus? If so, then God is at work in your life.\n\n",
            comments: "Turn from the deceitful promises of sin. Call upon Jesus to save you from the guilt and punishment and bondage. \"For whosoever shall call upon the name of the Lord shall be saved\" (Romans 10:13). Start banking your hope on all that God is for you in Jesus. Break the power of sin's promises by faith in the superior satisfaction of God's promises. Begin reading the Bible to find his precious and very great promises, which can set you free (2 Peter 1:3-4). Find a Bible-believing church and begin to worship and grow together with other people who treasure Christ above all things (Philippians 3:7).\n\nThe best news in the world is that there is no necessary conflict between our happiness and God's holiness. Being satisfied with all that God is for us in Jesus magnifies him as a great Treasure.\n\nThou wilt shew me the path of life: in thy presence is fulness of joy; at thy right hand there are pleasures for evermore. (Psalm 16:11)\(copyrightKJV)"),
    ],
    "English-NIV": [
        Quest(heading: "\(newTruths[english]![0])",
            scripture: "\n\n\"Delight yourself in the Lord and he will give you the desires of your heart.\" (Psalm 37:4)\n\n",
            comments: ""),
        
        Quest(heading: "\(newTruths[english]![1])",
            scripture: "\n\n\"Bring my sons from afar and my daughters from the ends of the earth … whom I created for my glory.\" (Isaiah 43:6–7)\n\n",
            comments: "God made us to magnify his greatness - the way telescopes magnify stars. He created us to put his goodness and truth and beauty and wisdom and justice on display. The greatest display of God's glory comes from deep delight in all that he is. This means that God gets the praise and we get the pleasure. God created us so that he is most glorified in us when we are most satisfied in him."),
        
        Quest(heading: "\(newTruths[english]![2])",
            scripture: "\n\n\"So whether you eat or drink or whatever you do, do it all for the glory of God.\" (1 Corinthians 10:31)\n\n",
            comments: "If God made us for his glory, it is clear that we should live for his glory. Our duty comes from his design. So our first obligation is to show God's value by being satisfied with all that he is for us. This is the essence of loving God (Matthew 22:37) and trusting him (1 John 5:3-4) and being thankful to him (Psalm 100:2-4). It is the root of all true obedience, especially loving others (Colossians 1:4-5)."),
        
        Quest(heading: "\(newTruths[english]![3])",
            scripture: "\n\n\"All have sinned and fall short of the glory of God.\" (Romans 3:23)\n\n",
            comments: "What does it mean to \"fall short of the glory of God?\" It means that none of us has trusted and treasured God the way we should. We have not been satisfied with his greatness and walked in his ways. We have sought our satisfaction in other things, and treated them as more valuable than God, which is the essence of idolatry (Romans 1:21-23). Since sin came into the world we have all been deeply resistant to having God as our all-satisfying treasure (Ephesians 2:3). This is an appalling offense to the greatness of God (Jeremiah 2:12-13)."),
        
        Quest(heading: "\(newTruths[english]![4])",
            scripture: "\n\n\"The wages of sin is death...\" (Romans 6:23)\n\n",
            comments: "We have all belittled the glory of God. How? By preferring other things above him. By our ingratitude, distrust and disobedience. So God is just in shutting us out from the enjoyment of his glory forever. \"They will suffer the punishment of eternal destruction and exclusion from the presence of the Lord and from the glory of his might\" (2 Thessalonians 1:9).\n\nThe word \"hell\" is used in the New Testament fourteen times (see below)—twelve times by Jesus himself. It is not a myth created by dismal and angry preachers. It is a solemn warning from the Son of God who died to deliver sinners from its curse. We ignore it at great risk.\n\nIf the Bible stopped here in its analysis of the human condition, we would be doomed to a hopeless future. However, this is not where it stops...\n\n\nAppearances of the word \"hell\" in the New Testament\n\nBut I tell you that anyone who is angry with his brother will be subject to judgment. Again, anyone who says to his brother, `Raca,' is answerable to the Sanhedrin. But anyone who says, `You fool!' will be in danger of the fire of hell. (Matthew 5:22 Jesus speaking)\n\nIf your right eye causes you to sin, gouge it out and throw it away. It is better for you to lose one part of your body than for your whole body to be thrown into hell. (Matthew 5:29 Jesus speaking)\n\nAnd if your right hand causes you to sin, cut it off and throw it away. It is better for you to lose one part of your body than for your whole body to go into hell. (Matthew 5:30 Jesus speaking)\n\nDo not be afraid of those who kill the body but cannot kill the soul. Rather, be afraid of the One who can destroy both soul and body in hell. (Matthew 10:28 Jesus speaking)\n\nAnd if your eye causes you to sin, gouge it out and throw it away. It is better for you to enter life with one eye than to have two eyes and be thrown into the fire of hell. (Matthew 18:9 Jesus speaking)\n\nWoe to you, teachers of the law and Pharisees, you hypocrites! You travel over land and sea to win a single convert, and when he becomes one, you make him twice as much a son of hell as you are. (Matthew 23:15 Jesus speaking)\n\nYou snakes! You brood of vipers! How will you escape being condemned to hell? (Matthew 23:33 Jesus speaking)\n\nIf your hand causes you to sin, cut it off. It is better for you to enter life maimed than with two hands to go into hell, where the fire never goes out. (Mark 9:43 Jesus speaking)\n\nAnd if your foot causes you to sin, cut it off. It is better for you to enter life crippled than to have two feet and be thrown into hell. (Mark 9:45 Jesus speaking)\n\nAnd if your eye causes you to sin, pluck it out. It is better for you to enter the kingdom of God with one eye than to have two eyes and be thrown into hell, (Mark 9:47 Jesus speaking)\n\nBut I will show you whom you should fear: Fear him who, after the killing of the body, has power to throw you into hell. Yes, I tell you, fear him. (Luke 12:5 Jesus speaking)\n\nIn hell, where he was in torment, he looked up and saw Abraham far away, with Lazarus by his side. (Luke 16:23 Jesus speaking)\n\nThe tongue also is a fire, a world of evil among the parts of the body. It corrupts the whole person, sets the whole course of his life on fire, and is itself set on fire by hell. (James 3:6 James speaking).\n\nFor if God did not spare angels when they sinned, but sent them to hell, putting them into gloomy dungeons to be held for judgment; (2 Peter 2:4 Peter speaking)"),
        
        Quest(heading: "\(newTruths[english]![5])",
            scripture: "\n\n\"Here is a trustworthy saying that deserves full acceptance: Christ Jesus came into the world to save sinners...\" (1 Timothy 1:15)\n\n",
            comments: "The good news is that Christ died for sinners like us. And he rose physically from the dead to validate the saving power of his death and to open the gates of eternal life and joy (1 Corinthians 15:20). This means God can acquit guilty sinners and still be just (Romans 3:25-26). \"For Christ died for sins once for all, the righteous for the unrighteous, to bring us to God\" (1 Peter 3:18). Coming home to God is where all deep and lasting satisfaction is found."),
        
        Quest(heading: "\(newTruths[english]![6])",
            scripture: "\n\n\"Repent, then, and turn to God, so that your sins may be wiped out.\" (Acts 3:19)\n\nBelieve in the Lord Jesus and you will be saved.\" (Acts 16:31)\n\n",
            comments: "\"Repent\" means to turn from all the deceitful promises of sin. \"Faith\" means being satisfied with all that God promises to be for us in Jesus. \"He who believes in me,\" Jesus says, \"shall never thirst\" (John 6:35). We do not earn our salvation. We cannot merit it (Romans 4:4-5). It is by grace through faith (Ephesians 2:8-9). It is a free gift (Romans 3:24). We will have it if we cherish it above all things (Matthew 13:44). When we do that, God's aim in creation is accomplished: He is glorified in us and we are satisfied in him - forever."),
        
        Quest(heading: "\(newTruths[english]![7])",
            scripture: "\n\nDoes this make sense to you?\n\nDo you desire the kind of gladness that comes from being satisfied with all that God is for you in Jesus? If so, then God is at work in your life.\n\n",
            comments: "Turn from the deceitful promises of sin. Call upon Jesus to save you from the guilt and punishment and bondage. \"All who call upon the name of the Lord will be saved\" (Romans 10:13). Start banking your hope on all that God is for you in Jesus. Break the power of sin's promises by faith in the superior satisfaction of God's promises. Begin reading the Bible to find his precious and very great promises, which can set you free (2 Peter 1:3-4). Find a Bible-believing church and begin to worship and grow together with other people who treasure Christ above all things (Philippians 3:7).\n\nThe best news in the world is that there is no necessary conflict between our happiness and God's holiness. Being satisfied with all that God is for us in Jesus magnifies him as a great Treasure.\n\nYou make known to me the path of life; in your presence there is fullness of joy; at your right hand are pleasures forevermore. (Psalm 16:11)\(copyrightNIV)"),
    ],
    "French": [
        Quest(heading: "Est-ce que vous saviez que Dieu nous donne le commandement d’être joyeux ?",
            scripture: "\n\n« Fais de l’Éternel tes délices, Et il te donnera ce que ton cœur désire. » (Psaume 37:4 COL)\n\n",
            comments: ""),
        Quest(heading: "1) Dieu nous a créés pour sa gloire",
            scripture: "\n\n« Fais venir mes fils de loin et mes filles de l’extrémité de la terre […] quiconque […] que pour ma gloire j’ai créé, formé et fait. » (Esaïe 43:6-7)\n\n",
            comments: "Dieu nous a faits pour que nous magnifiions sa gloire, comme un télescope magnifie ou agrandit les étoiles. Il nous a créés pour que nous montrions sa bonté, sa vérité et sa beauté, sa sagesse et sa justice. La meilleure façon dont nous pouvons montrer la gloire de Dieu est en faisant de lui nos délices les plus profonds. Cela signifie que Dieu reçoit notre louange et nous recevons sa joie. Dieu nous a créés afin qu’il soit glorifié en nous quand nous sommes le plus satisfaits en lui."),
        Quest(heading: "2) Chaque être humain devrait vivre pour glorifier Dieu comme il devrait l’être",
            scripture: "\n\n« Que vous mangiez, que vous buviez, ou que vous fassiez quoi que ce soit, faites tout pour la gloire de Dieu. » (1 Corinthiens 10:31 BFC)\n\n",
            comments: "Si Dieu nous a créés pour sa gloire, il est clair que nous devons vivre pour sa gloire. C’est à cause de ses desseins que nous avons des devoirs. Notre première obligation est donc de montrer la valeur de Dieu par notre satisfaction pour tout ce qu’il est pour nous. C’est dans cette satisfaction que se trouve l’essence même de notre amour pour Dieu (Matthieu 22:37), ainsi que la confiance que nous mettons en lui (1 Jean 5:3-4) et notre reconnaissance envers lui (Psaume 100:2-4). C’est la racine de toute obéissance véritable, qui nous conduit surtout à aimer les gens autour de nous (Colossiens 1:4-5)."),
        Quest(heading: "3) Nous avons tous échoué à glorifier Dieu comme il devrait l’être",
            scripture: "\n\n« Tous ont péché et n’atteignent pas à la gloire de Dieu. » (Romains 3:23 DRB)\n\n",
            comments: "Que signifie « ne pas atteindre à la gloire de Dieu ? » Cela signifie qu’aucun de nous ne fait assez confiance en Dieu et ne l’aime suffisamment. Nous ne sommes pas pleinement satisfaits de sa grandeur et nous n’avons pas marché dans ses voies. Nous avons cherché notre satisfaction en d’autres choses, et nous les avons considérées comme plus précieuses que Dieu. Ceci est l’origine de l’idolâtrie (Romains 1:21-23). Depuis que le péché est entré dans le monde, nous avons tous été très résistants à faire de Dieu le trésor qui nous comble (Ephésiens 2:3). Ceci est une injure à la grandeur de Dieu (Jérémie 2:12-13)."),
        Quest(heading: "4) Nous sommes tous sujets à la condamnation juste de Dieu",
            scripture: "\n\n« Car le salaire du péché, c’est la mort. » (Romains 6:23)\n\n",
            comments: "Nous avons tous sous-estimé la gloire de Dieu. Comment ? En mettant tout un tas d’autres choses au-dessus de lui. A cause de notre ingratitude, de notre manque de confiance en lui et de notre désobéissance. Dieu est donc juste lorsqu’il nous tient éloignés de la joie de demeurer dans sa gloire à jamais. « Ils auront pour juste châtiment une ruine éternelle, loin de la face du Seigneur et de la gloire de sa force » (2 Thessaloniciens 1:9 COL)\n\nLe mot « enfer » (parfois traduit « géhenne ») est utilisé douze fois dans le Nouveau Testament (onze fois par Jésus lui-même). Il ne s’agit pas d’un mythe inventé par de sinistres prédicateurs colériques. C’est une mise en garde solennelle du Fils de Dieu qui est mort pour délivrer les pécheurs de cette malédiction. Nous l’ignorons à nos risques et périls.\n\nSi la Bible s’arrêtait ici dans son analyse de la condition humaine, nous serions condamnés à un avenir sans espoir. Cependant, les choses ne s’arrêtent pas là…\n\nUtilisations du mot « enfer » dans le Nouveau Testament\n\n« Eh bien, moi je vous déclare : tout homme qui se met en colère contre son frère mérite de comparaître devant le juge; celui qui dit à son frère: ‘Imbécile !’ mérite d’être jugé par le Conseil supérieur; celui qui lui dit: ‘Idiot !’ mérite d’être jeté dans le feu de l’enfer. » (Matthieu 5:22 BFC. Paroles de Jésus)\n\n« Si donc c’est à cause de ton œil droit que tu tombes dans le péché, arrache-le et jette-le loin de toi: il vaut mieux pour toi perdre une seule partie de ton corps que d’être jeté tout entier dans l’enfer. » (Matthieu 5:29 BFC. Paroles de Jésus)\n\n« Si c’est à cause de ta main droite que tu tombes dans le péché, coupe-la et jette-la loin de toi: il vaut mieux pour toi perdre un seul membre de ton corps que d’aller tout entier en enfer. » (Matthieu 5:30 BFC. Paroles de Jésus)\n\n« Ne craignez pas ceux qui tuent le corps mais qui ne peuvent pas tuer l’âme; craignez plutôt Dieu qui peut faire périr à la fois le corps et l’âme dans l’enfer. » (Matthieu 10:28 BFC. Paroles de Jésus)\n\n« Et si c’est à cause de ton œil que tu tombes dans le péché, arrache-le et jette-le loin de toi; il vaut mieux pour toi entrer dans la vraie vie avec un seul œil que de garder les deux yeux et d’être jeté dans le feu de l’enfer. » (Matthieu 18:9 BFC. Paroles de Jésus)\n\n« Malheur à vous, maîtres de la loi et Pharisiens, hypocrites! Vous voyagez partout sur terre et sur mer pour gagner un seul converti, et quand vous l’avez gagné vous le rendez digne de l’enfer deux fois plus que vous. » (Matthieu 23:15 BFC. Paroles de Jésus)\n\n« Serpents, bande de vipères! Comment pensez-vous éviter d’être condamnés à l’enfer? » (Matthieu 23:33 BFC Paroles de Jésus)\n\n« Si c’est à cause de ta main que tu tombes dans le péché, coupe-la; il vaut mieux pour toi entrer dans la vraie vie avec une seule main que de garder les deux mains et d’aller en enfer, dans le feu qui ne s’éteint pas. » (Marc 9:43 BFC Paroles de Jésus)\n\n« Si c’est à cause de ton pied que tu tombes dans le péché, coupe-le; il vaut mieux pour toi entrer dans la vraie vie avec un seul pied que de garder les deux pieds et d’être jeté en enfer. » (Marc 9:45 BFC Paroles de Jésus)\n\n« Et si c’est à cause de ton œil que tu tombes dans le péché, arrache-le; il vaut mieux pour toi entrer dans le Royaume de Dieu avec un seul œil que de garder les deux yeux et d’être jeté en enfer. » (Marc 9:47 BFC Paroles de Jésus)\n\n« Je vais vous montrer qui vous devez craindre: craignez Dieu qui, après la mort, a le pouvoir de vous jeter en enfer. Oui, je vous le dis, c’est lui que vous devez craindre! » (Luc 12:5 BFC Paroles de Jésus)\n\n« Il souffrait beaucoup dans le monde des morts; il leva les yeux et vit de loin Abraham et Lazare à côté de lui. » (Luc 16:23 Paroles de Jésus)\n\n« La langue est pareille à un feu. C’est un monde de mal installé dans notre corps, elle infecte notre être entier. Elle enflamme tout le cours de notre existence d’un feu provenant de l’enfer même. » (Jacques 3:6 BFC Paroles de Jésus)\n\n« En effet, Dieu n’a pas épargné les anges coupables, mais il les a jetés dans l’enfer où ils sont gardés enchaînés dans l’obscurité pour le jour du Jugement. » (2 Pierre 2:4 BFC Paroles de Jésus)"),
        Quest(heading: "5) Dieu a envoyé son Fils unique pour nous donner la vie et la joie éternelle.",
            scripture: "\n\n« C’est une parole certaine et digne d’être entièrement reçue, que le Christ-Jésus est venu dans le monde pour sauver les pécheurs. » (1 Timothée 1:15 COL)\n\n",
            comments: "La Bonne Nouvelle est que Christ est mort pour des pécheurs comme nous. Et il est ressuscité physiquement des morts pour valider la puissance salvatrice de sa mort et ouvrir les portes de la vie et de la joie éternelle (1 Corinthiens 15:20 COL). Cela signifie que Dieu peut acquitter les pécheurs coupables tout en restant juste (Romains 3:25-26 COL). « En effet, Christ aussi est mort une seule fois pour les péchés, lui juste pour des injustes, afin de vous amener à Dieu. » (1 Pierre 3:18 COL). Notre demeure auprès de Dieu est l’endroit où nous trouvons notre satisfaction profonde et éternelle."),
        Quest(heading: "6) Les bénéfices rachetés par la mort de Christ appartiennent à ceux qui se repentent et qui mettent leur confiance en lui.",
            scripture: "\n\n« Repentez-vous donc et convertissez-vous, pour que vos péchés soient effacés. » (Actes 3 :19)\n\n« Crois au Seigneur Jésus, et tu seras sauvé. » (Actes 16 :31)\n\n",
            comments: "Se repentir signifie se détourner des fausses promesses que nous fait miroiter le péché. La foi implique que nous sommes satisfaits de tout ce que Dieu nous promet en Jésus. Celui qui « crois en moi » dit Jésus « n’aura jamais soif » (Jean 6 :35). Nous ne pouvons gagner notre salut. Nous ne pouvons le mériter (Romains 4 :4-5). Nous le recevons par grâce au travers de notre foi (Ephésiens 2 :8-9). C’est un don gratuit (Romains 3 :24). Nous le recevrons si nous le voulons par-dessus tout (Matthieu 13 :44). Lorsque nous faisons cela, l’objectif que Dieu avait pour sa création est accompli : Il est glorifié en nous et nous sommes satisfaits en lui, pour toujours."),
        Quest(heading: "Que faire ?",
            scripture: "\n\nEst-ce que cela vous parle ?\n\nEst-ce que vous désirez cette joie qui vient du fait d’être satisfait  de tout ce que Dieu est pour vous en Jésus ? Si c’est le cas, alors Dieu est à l’œuvre dans votre vie.\n\n",
            comments: "Détournez-vous des fausses promesses du péché. Faites appel à Jésus pour vous sauver de la culpabilité, du châtiment et de l’esclavage. \"Quiconque fera appel au Seigneur sera sauvé.\" (Romains 10:13). Commencez à placer votre espérance en tout ce que Dieu est pour vous par Jésus. Brisez la puissance des promesses du péché grâce à votre foi en la satisfaction suprême que nous donnent les promesses de Dieu. Commencez à lire la Bible afin de trouver ses précieuses promesses qui ont le pouvoir de nous libérer (2 Pierre 1:3-4). Trouvez une église qui croit en la Bible et commencez à louer Dieu et à grandir entouré d’autres personnes qui aiment Christ par-dessus toute autre chose (Philippiens 3:7).\n\nLa meilleure nouvelle est qu’il n’y a  pas nécessairement de conflit entre notre bonheur et la sainteté de Dieu. Lorsque nous sommes satisfaits dans tout ce que Dieu est pour nous en Jésus, nous faisons de lui notre plus grand Trésor.\n\n« Tu me fais savoir quel chemin mène à la vie. On trouve une joie pleine en ta présence, un plaisir éternel près de toi. » (Psaume 16 :11)\(copyrightFrench)"),
    ],
    "German": [
        Quest(heading: "Wussten Sie, dass Gott uns gebietet, glücklich zu sein?",
            scripture: "\n\n„Habe deine Lust am HERRN; der wird dir geben, was dein Herz wünscht.\" (Psalm 37,4)\n\n",
            comments: ""),
        Quest(heading: "1) Gott hat uns zu seiner Ehre geschaffen",
            scripture: "\n\n„Bring her meine Söhne von ferne und meine Töchter vom Ende der Erde, ... die ich zu meiner Ehre geschaffen ... habe.\" (Jesaja 43,6-7)\n\n",
            comments: "Gott hat uns gemacht, damit wir seine Herrlichkeit vergrößern – so wie ein Teleskop Sterne vergrößert. Er hat uns geschaffen, damit wir seine Güte, Wahrheit, Schönheit, Weisheit und Gerechtigkeit zur Schau stellen. Die Herrlichkeit Gottes wird am deutlichsten gesehen, wenn wir uns an allem, was er ist, zutiefst erfreuen. Auf diese Weise bekommt Gott das Lob und wir bekommen die Freude. Gott hat uns so geschaffen, dass er am meisten durch uns verherrlicht wird, wenn wir die größte Erfüllung in ihm finden."),
        Quest(heading: "2) Jeder Mensch sollte zu Gottes Ehre leben",
            scripture: "\n\n„Ob ihr nun esst oder trinkt oder was ihr auch tut, das tut alles zu Gottes Ehre.\" (1. Korinther 10,31)\n\n",
            comments: "Gott hat uns zu seiner Ehre gemacht. Folglich sollten wir auch zu seiner Ehre leben. Das ist die Aufgabe, die Gott uns zugewiesen hat. Unsere erste Pflicht liegt also darin, Gottes Größe zu zeigen, indem wir in allem, was er für uns ist, Erfüllung finden. Gottes Ehre ist ebenso der Kern in den Aufforderungen, Gott zu lieben (Matthäus 22,37), ihm zu vertrauen (1. Johannes 5,3-4) und ihm zu danken (Psalm 100,2-4). Sie ist auch die Wurzel allen wahren Gehorsams, insbesondere der Liebe zu anderen Menschen (Kolosser 1,4-5)."),
        Quest(heading: "3) Wir alle haben darin versagt, Gott die gebührende Ehre zu geben",
            scripture: "\n\n„Sie sind allesamt Sünder und ermangeln des Ruhmes, den sie bei Gott haben sollten.\" (Römer 3,23)\n\n",
            comments: "Was heißt es, den Ruhm, den wir bei Gott haben sollten, zu ermangeln? Es bedeutet, dass wir alle Gott nicht so vertrauen und wertschätzen, wie wir es sollten. Wir haben keine Erfüllung in seiner Herrlichkeit gefunden und sind von seinen Wegen abgewichen. Wir haben unsere Erfüllung in anderen Dingen gesucht und haben sie für wertvoller als Gott gehalten, was im Grunde Götzendienst ist (Römer 1,21-23). Seit dem Sündenfall haben wir uns alle stark dem widersetzt, Gott als unseren vollkommen erfüllenden Schatz anzusehen (Epheser 2,3). Das ist ein schreckliches Vergehen gegen die Herrlichkeit Gottes (Jeremia 2,12-13)."),
        Quest(heading: "4) Wir alle verdienen Gottes gerechtes Urteil",
            scripture: "\n\n„Denn der Sünde Sold ist der Tod...\" (Römer 6,23)\n\n",
            comments: "Wir alle haben Gottes Ehre abgewertet. Wie? Indem wir andere Dinge ihm vorgezogen haben. Indem wir Gott nicht vertraut haben, sondern ihm undankbar und ungehorsam gewesen sind. Gott ist also gerecht, wenn er uns für immer von der Freude an seiner Herrlichkeit ausschließt. „Die werden Strafe erleiden, das ewige Verderben, vom Angesicht des Herrn her und von seiner herrlichen Macht\" (2. Thessalonicher 1,9).\n\nIm Neuen Testament wird das Wort „Hölle\" vierzehn Mal verwendet – zwölf Mal von Jesus selbst. Die Hölle ist kein von zürnenden Predigern geschaffener Mythos. Sie ist eine ernste Warnung des Sohnes Gottes, der gestorben ist, um Sünder von ihrem Fluch zu erretten. Wenn wir diese Warnung ignorieren, laufen wir in große Gefahr.\n\nWenn die Bibel hier mit ihrer Analyse der menschlichen Situation abschließen würde, dann wären wir zu einer hoffnungslosen Zukunft verdammt. Aber die Bibel endet nicht hier...\n\nWo die Hölle im Neuen Testament erwähnt wird\n\nIch aber sage euch: Wer mit seinem Bruder zürnt, der ist des Gerichts schuldig; wer aber zu seinem Bruder sagt: Du Nichtsnutz!, der ist des Hohen Rats schuldig; wer aber sagt: Du Narr!, der ist des höllischen Feuers schuldig. (Matthäus 5,22; Jesus spricht)\n\nWenn dich aber dein rechtes Auge zum Abfall verführt, so reiß es aus und wirf's von dir. Es ist besser für dich, dass eins deiner Glieder verderbe und nicht der ganze Leib in die Hölle geworfen werde. (Matthäus 5,29; Jesus spricht)\n\nWenn dich deine rechte Hand zum Abfall verführt, so hau sie ab und wirf sie von dir. Es ist besser für dich, dass eins deiner Glieder verderbe und nicht der ganze Leib in die Hölle fahre. (Matthäus 5,30; Jesus spricht)\n\nUnd fürchtet euch nicht vor denen, die den Leib töten, doch die Seele nicht töten können; fürchtet euch aber viel mehr vor dem, der Leib und Seele verderben kann in der Hölle. (Matthäus 10,28; Jesus spricht)\n\nUnd wenn dich dein Auge zum Abfall verführt, reiß es aus und wirf's von dir. Es ist besser für dich, dass du einäugig zum Leben eingehst, als dass du zwei Augen hast und wirst in das höllische Feuer geworfen. (Matthäus 18,9; Jesus spricht)\n\nWeh euch, Schriftgelehrte und Pharisäer, ihr Heuchler, die ihr Land und Meer durchzieht, damit ihr einen Judengenossen gewinnt; und wenn er's geworden ist, macht ihr aus ihm ein Kind der Hölle, doppelt so schlimm wie ihr. (Matthäus 23,15; Jesus spricht)\n\nIhr Schlangen, ihr Otternbrut! Wie wollt ihr der höllischen Verdammnis entrinnen? (Matthäus 23,33; Jesus spricht)\n\nWenn dich aber deine Hand zum Abfall verführt, so haue sie ab! Es ist besser für dich, dass du verkrüppelt zum Leben eingehst, als dass du zwei Hände hast und fährst in die Hölle, in das Feuer, das nie verlöscht. (Markus 9,43; Jesus spricht)\n\nWenn dich dein Fuß zum Abfall verführt, so haue ihn ab! Es ist besser für dich, dass du lahm zum Leben eingehst, als dass du zwei Füße hast und wirst in die Hölle geworfen. (Markus 9,45; Jesus spricht)\n\nWenn dich dein Auge zum Abfall verführt, so wirf's von dir! Es ist besser für dich, dass du einäugig in das Reich Gottes gehst, als dass du zwei Augen hast und wirst in die Hölle geworfen. (Markus 9,47 Jesus spricht)\n\nIch will euch aber zeigen, vor wem ihr euch fürchten sollt: Fürchtet euch vor dem, der, nachdem der getötet hat, auch Macht hat, in die Hölle zu werfen. Ja, ich sage euch, vor dem fürchtet euch. (Lukas 12,5; Jesus spricht)\n\nAls er nun in der Hölle war, hob er seine Augen auf in seiner Qual und sah Abraham von ferne und Lazarus in seinem Schoß. (Lukas 16,23; Jesus spricht)\n\nDenn Gott hat selbst die Engel, die gesündigt haben, nicht verschont, sondern hat sie mit Ketten der Finsternis in die Hölle gestoßen und übergeben, damit sie für das Gericht festgehalten werden. (2. Petrus 2,4; Petrus spricht)\n\nAuch die Zunge ist ein Feuer, eine Welt voll Ungerechtigkeit. So ist die Zunge unter unsern Gliedern: sie befleckt den ganzen Leib und zündet die ganze Welt an und ist selbst von der Hölle entzündet. (Jakobus 3,6; Jakobus spricht)"),
        Quest(heading: "5) Gott sandte seinen einzigen Sohn Jesus, um uns ewiges Leben und ewige Freude anzubieten",
            scripture: "\n\n„Das ist gewisslich wahr und ein Wort, des Glaubens wert, dass Christus Jesus in die Welt gekommen ist, die Sünder selig zu machen...\" (1. Timotheus 1,15)\n\n",
            comments: "Die gute Nachricht ist, dass Christus für Sünder wie uns gestorben ist. Und er ist leiblich vom Tod auferstanden, um die errettende Kraft seines Todes zu beweisen und die Tore des ewigen Lebens und der ewigen Freude zu öffnen (1. Korinther 15,20). Das bedeutet, dass Gott schuldige Sünder freisprechen und dennoch gerecht sein kann (Römer 3,25-26). „Denn auch Christus hat einmal für die Sünden gelitten, der Gerechte für die Ungerechten, damit er euch zu Gott führte\" (1. Petrus 3,18). Nur wenn wir zu Gott nach Hause kommen, finden wir tiefe und bleibende Erfüllung."),
        Quest(heading: "6) Die Errungenschaften, die durch Christi Tod erkauft wurden, gehören denen, die Buße tun und ihm vertrauen",
            scripture: "\n\n„So tut nun Buße und bekehrt euch, dass eure Sünden getilgt werden.\" (Apostelgeschichte 3,19)\n\n„Glaube an den Herrn Jesus, so wirst du und dein Haus selig!\" (Apostelgeschichte 16,31)\n\n",
            comments: "„Buße tun\" heißt, sich von den falschen Versprechen der Sünde abzuwenden. „Glauben\" heißt, in all dem, was Gott für uns in Jesus ist, Erfüllung zu finden. Jesus sagt: „Wer an mich glaubt, den wird nimmermehr dürsten\" (Johannes 6,35). Wir verdienen unsere Errettung nicht und wir können sie uns auch nicht erwerben (Römer 4,4-5). Wir erhalten sie aus Gnade durch den Glauben (Epheser 2,8-9). Sie ist ein Geschenk (Römer 3,24). Wenn wir sie über alles andere wertschätzen, werden wir sie bekommen (Matthäus 13,44). Und wenn wir das tun, ist Gottes Absicht mit seiner Schöpfung erfüllt: Er ist in uns verherrlicht und wir finden in ihm unsere Erfüllung – für immer."),
        Quest(heading: "Was sollten Sie tun?",
            scripture: "\n\nVerstehen Sie, worum es geht?\n\nHaben Sie ein Verlangen nach dieser Art der Freude, die man bekommt, wenn man in allem, was Gott für uns in Jesus ist, Erfüllung findet? Wenn ja, dann ist Gott am wirken in Ihrem Leben.\n\n",
            comments: "Wenden Sie sich ab von den falschen Versprechen der Sünde. Bitten Sie Jesus, Sie von der Schuld und Strafe und Gefangenschaft zu erretten. „Denn wer den Namen des Herrn anrufen wird, soll gerettet werden\" (Römer 10,13). Fangen Sie an, Ihre Hoffnung auf all das zu setzen, was Gott für Sie in Jesus ist. Zerstören Sie die Kraft der Versprechen der Sünde durch den Glauben an die größere Erfüllung der Verheißungen Gottes. Fangen Sie an, die Bibel zu lesen, um Gottes teure und allergrößte Verheißungen zu finden, durch die Sie frei werden können (2. Petrus 1,3-4). Suchen Sie eine bibeltreue Gemeinde auf und fangen Sie an, gemeinsam mit anderen Menschen, die Christus über alles andere wertschätzen, Gott anzubeten und im Glauben zu wachsen (Philipper 3,7).\n\nDie beste Nachricht auf der ganzen Welt ist, dass es keinen Konflikt zwischen unserer Freude und Gottes Heiligkeit geben muss. Wenn wir in all dem, was Gott für uns in Jesus ist, unsere Erfüllung finden, dann wird er als größter Schatz verherrlicht.\n\n„Du tust mir kund den Weg zum Leben: Vor dir ist Freude die Fülle und Wonne zu deiner Rechten ewiglich.\" (Psalm 16,11)\n\nBibelstellen\n\nJesus aber antwortete ihm: „Du sollst den Herrn, deinen Gott, lieben von ganzem Herzen, von ganzer Seele und von ganzem Gemüt.\" (Matthäus 22,37)\n\nDenn das ist die Liebe zu Gott, dass wir seine Gebote halten; und seine Gebote sind nicht schwer. Denn alles, was von Gott geboren ist, überwindet die Welt; und unser Glaube ist der Sieg, der die Welt überwunden hat. (1. Johannes 5,3-4)\n\nDienet dem HERRN mit Freuden, kommt vor sein Angesicht mit Frohlocken! Erkennet, dass der HERR Gott ist! Er hat uns gemacht und nicht wir selbst zu seinem Volk und zu Schafen seiner Weide. Gehet zu seinen Toren ein mit Danken, zu seinen Vorhöfen mit Loben; danket ihm, lobet seinen Namen! (Psalm 100,2-4)\n\n... da wir gehört haben von eurem Glauben an Christus Jesus und von der Liebe, die ihr zu allen Heiligen habt, um der Hoffnung willen, die für euch bereit ist im Himmel. Von ihr habt ihr schon zuvor gehört durch das Wort der Wahrheit, das Evangelium. (Kolosser 1,4-5)\n\nDenn obwohl sie von Gott wussten, haben sie ihn nicht als Gott gepriesen noch ihm gedankt, sondern sind dem Nichtigen verfallen in ihren Gedanken, und ihr unverständiges Herz ist verfinstert. Da sie sich für Weise hielten, sind sie zu Narren geworden und haben die Herrlichkeit des unvergänglichen Gottes vertauscht mit einem Bild gleich dem eines vergänglichen Menschen und der Vögel und der vierfüßigen und der kriechenden Tiere. (Römer 1,21-23)\n\nUnter ihnen haben auch wir alle einst unser Leben geführt in den Begierden unseres Fleisches und taten den Willen des Fleisches und der Sinne und waren Kinder des Zorns von Natur wie auch die andern. (Epheser 2,3)\n\nEntsetze dich, Himmel, darüber, erschrick und erbebe gar sehr, spricht der HERR. Denn mein Volk tut eine zweifache Sünde: Mich, die lebendige Quelle, verlassen sie und machen sich Zisternen, die doch rissig sind und kein Wasser geben. (Jeremia 2,12-13)\n\nNun aber ist Christus auferstanden von den Toten als Erstling unter denen, die entschlafen sind. (1. Korinther 15,20)\n\nDen hat Gott für den Glauben hingestellt als Sühne in seinem Blut zum Erweis seiner Gerechtigkeit, indem er die Sünden vergibt, die früher begangen wurden in der Zeit seiner Geduld, um nun in dieser Zeit seine Gerechtigkeit zu erweisen, dass er selbst gerecht ist und gerecht macht den, der da ist aus dem Glauben an Jesus. (Römer 3,25-26)\n\nDem aber, der mit Werken umgeht, wird der Lohn nicht aus Gnade zugerechnet, sondern aus Pflicht. Dem aber, der nicht mit Werken umgeht, glaubt aber an den, der die Gottlosen gerecht macht, dem wird sein Glaube gerechnet zur Gerechtigkeit. (Römer 4,4-5)\n\nDenn aus Gnade seid ihr selig geworden durch Glauben, und das nicht aus euch: Gottes Gabe ist es, nicht aus Werken, damit sich nicht jemand rühme. (Epheser 2,8-9)\n\nUnd werden ohne Verdienst gerecht aus seiner Gnade durch die Erlösung, die durch Christus Jesus geschehen ist. (Römer 3,24)\n\nDas Himmelreich gleicht einem Schatz, verborgen im Acker, den ein Mensch fand und verbarg; und in seiner Freude ging er hin und verkaufte alles, was er hatte, und kaufte den Acker. (Matthäus 13,44)\n\nAlles, was zum Leben und zur Frömmigkeit dient, hat uns seine göttliche Kraft geschenkt durch die Erkenntnis dessen, der uns berufen hat durch seine Herrlichkeit und Kraft. Durch sie sind uns die teuren und allergrößten Verheißungen geschenkt, damit ihr dadurch Anteil bekommt an der göttlichen Natur, die ihr entronnen seid der verderblichen Begierde in der Welt. (2. Petrus 1,3-4)\n\nAber was mir Gewinn war, das habe ich um Christi willen für Schaden erachtet. (Philipper 3,7)\(copyrightGerman)"),
    ],
    "Spanish": [
        Quest(heading: "\(newTruths[spanish]![0])",
            scripture: "\n\n\"Pon tu delicia en el SEÑOR, y El te dará las peticiones de tu corazón.\" (Salmos 37:4)\n\n",
            comments: ""),
        
        Quest(heading: "\(newTruths[spanish]![1])",
            scripture: "\n\n\"Trae de lejos mis hijos, y mis hijas de los confines de la tierra […]; para gloria mía los he creado.\" (Isaías 43:6-7)\n\n",
            comments: "Dios nos creó para magnificar su grandeza, al igual que un telescopio magnifica las estrellas. Nos creó para poner de manifiesto su bondad y verdad, su hermosura, sabiduría y justicia. La gloria de Dios se manifiesta al más alto grado cuando nos deleitamos profundamente en todo lo que Él es. Así, Dios recibe la alabanza, y nosotros el placer. Dios nos creó de tal forma que cuanto más nos satisfacemos nosotros en Él, más se glorifica Él en nosotros."),
        
        Quest(heading: "\(newTruths[spanish]![2])",
            scripture: "\n\n\"Si, pues, coméis o bebéis, o hacéis otra   cosa, hacedlo todo para la gloria de Dios.\" (1 Corintios 10:31)\n\n",
            comments: "Si Dios nos creó para su gloria, está claro que deberíamos vivir para glorificarlo. Éste es nuestro deber porque fuimos diseñados precisamente con ese propósito. Así que, nuestra primera obligación es mostrar el valor de Dios sintiéndonos satisfechos con todo lo que Él es para nosotros. En esta satisfacción se encuentra la esencia del amor a Dios (Mateo 22.37), de la confianza (1 Juan 5.3-4) y del agradecimiento a Él (Salmos 100.2-4). Ésa es la raíz de toda verdadera obediencia, especialmente del amor hacia los demás (Colosenses 1.4-5)."),
        
        Quest(heading: "\(newTruths[spanish]![3])",
            scripture: "\n\n\"Todos pecaron, y están destituidos de la gloria de Dios.\" (Romanos 3:23)\n\n",
            comments: "¿Qué significa \"estar destituido de la gloria de Dios\"? Significa que ninguno de nosotros ha confiado en Dios ni lo ha valorado como debería. No nos hemos quedado satisfechos con su grandeza, ni hemos andado en sus caminos. Hemos buscado nuestra satisfacción en otras cosas a las cuales hemos dado más valor que a Dios, y ésta es la esencia de la idolatría (Romanos 1.21-23). Desde que entró el pecado en el mundo, todos hemos sido profundamente reacios a tener a Dios como el tesoro que nos satisface por completo (Efesios 2.3), lo cual es una terrible ofensa a la grandeza de Dios (Jeremías 2.12-13)."),
        
        Quest(heading: "\(newTruths[spanish]![4])",
            scripture: "\n\n\"La paga del pecado es muerte.\" (Romanos 6.23)\n\n",
            comments: "Todos hemos menospreciado la gloria de Dios. ¿De qué manera? Prefiriendo otras cosas antes que a Él. Siendo ingratos, desconfiados y desobedientes. Por lo tanto, Dios nos trata con justicia cuando nos niega el placer de su gloria para  siempre. \"Sufrirán pena de eterna perdición, excluidos de la presencia del Señor y de la gloria de su poder\"(2 Tesalonicenses 1.9). La palabra \"infierno\" aparece en el Nuevo Testamento en doce ocasiones, y en once de ellas, es Jesús mismo quien la usa.  No se trata, pues, de un mito creado por predicadores taciturnos y llenos de ira. Es un aviso solemne de parte del Hijo de Dios, quien murió para rescatar a los pecadores de la condenación eterna. Corremos un gran peligro al ignorarlo. Si la Biblia acabara aquí su análisis de la condición humana, estaríamos condenados a un futuro sin esperanza. Sin embargo, hay más..."),
        
        Quest(heading: "\(newTruths[spanish]![5])",
            scripture: "\n\n\"Palabra fiel y digna de ser recibida por todos: que Cristo Jesús vino al mundo para salvar a los pecadores.\" (1 Timoteo 1.15)\n\n",
            comments: "Las buenas nuevas son que Cristo murió por pecadores como nosotros, y resucitó físicamente para validar el poder salvador de su muerte y para abrir las puertas de la vida eterna y del gozo (1 Corintios 15.20). Es decir, Dios puede absolver a los pecadores culpables y seguir siendo considerado justo (Romanos 3.25-26).\"Porque también Cristo padeció una sola vez por los pecados, el justo por los injustos, para llevarnos a Dios\" (1 Pedro 3:18). De la reconciliación con Dios es de donde surge toda satisfacción profunda y duradera."),
        
        Quest(heading: "\(newTruths[spanish]![6])",
            scripture: "\n\n\"Así que, arrepentíos y convertíos, para que sean borrados vuestros pecados.\" (Hechos 3:19)\n\nCree en el Señor Jesucristo, y serás salvo.\" (Hechos 16:31)\n\n",
            comments: "\"Arrepentirse\" significa rechazar todas las promesas engañosas del pecado. \"Fe\" significa estar satisfecho con todo lo que Dios promete ser para nosotros en Jesús. \"El que en mí cree\", dice Jesús, \"no tendrá sed jamás\" (Juan 6.35). No nos ganamos la salvación, no podemos merecerla (Romanos 4.4-5). La recibimos por gracia, por medio de la fe (Efesios 2.8-9); es un regalo gratuito (Romanos 3.24). La tendremos si la valoramos sobre todas las cosas (Mateo 13.44). Cuando así lo hacemos, se cumple el propósito de Dios para la creación: Él se glorifica en nosotros y nosotros nos satisfacemos en Él, para siempre."),
        
        Quest(heading: "\(newTruths[spanish]![7])",
            scripture: "\n\n¿Le parece que lo que le decimos tiene sentido?\n\n¿Le gustaría tener el tipo de felicidad que se experimenta al sentirse satisfecho con todo lo que Dios es para usted en Jesús? Si es así, entonces Dios está obrando en su vida.\n\n",
            comments: "Deje de confiar en las promesas engañosas del pecado. Clame a Jesús para que le salve de la culpa, el castigo y la esclavitud. \"Todo aquel que invocare el nombre del Señor, será salvo\" (Romanos 10.13). Empiece a depositar su confianza en todo lo que Dios es para usted en Jesucristo. Rompa el poder de las promesas del pecado por su fe en la satisfacción superior de las promesas de Dios. Empiece a leer la Biblia para encontrar sus preciosas y grandiosas promesas que le pueden liberar (2 Pedro 1.3-4). Encuentre una iglesia cimentada en las verdades bíblicas y empiece a adorar a Dios y a crecer junto a otras personas que valoran a Cristo por encima de todas las cosas (Filipenses 3.7).\(copyrightText)"),
    ],
    "New": [
        Quest(heading: "\n\n",
            scripture: "\n\n\n\n",
            comments: "\(copyrightText)"),
        Quest(heading: "\n\n",
            scripture: "\n\n\n\n",
            comments: "\(copyrightText)"),
        Quest(heading: "\n\n",
            scripture: "\n\n\n\n",
            comments: "\(copyrightText)"),
        Quest(heading: "\n\n",
            scripture: "\n\n\n\n",
            comments: "\(copyrightText)"),
        Quest(heading: "\n\n",
            scripture: "\n\n\n\n",
            comments: "\(copyrightText)"),
        Quest(heading: "\n\n",
            scripture: "\n\n\n\n",
            comments: "\(copyrightText)"),
        Quest(heading: "\n\n",
            scripture: "\n\n\n\n",
            comments: "\(copyrightText)"),
        Quest(heading: "\n\n",
            scripture: "\n\n\n\n",
            comments: "\(copyrightText)"),
    ],
]

class Truth: NSObject {
    var language: String
    var truths: [Quest]
    var copyright: String
    
    init(language: String) {
        self.language = language
        self.truths = newQuestData[language]!
        self.copyright = copyrightData[language]!
    }
    
    func switchLanguage(language: String) {
        self.language = language
        self.truths = newQuestData[language]!
        self.copyright = copyrightData[language]!
    }
    
    func truth(number: Int) -> Quest {
        return truths[number]
    }
    
    func numberOf() -> Int {
        return truths.count
    }
    
    func heading(number: Int) -> String {
        return truths[number].heading
    }
    
}

// Initialize Truths with "English-ESV" data
var Truths = Truth(language: "English-ESV")

var tryUpdate = true

