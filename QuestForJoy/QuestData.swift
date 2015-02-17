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

let copyrightESV = "\n\n\nScripture taken from The Holy Bible, English Standard Version. Copyright ©2001 by Crossway Bibles, http://www.crosswaybibles.org, a publishing ministry of Good News Publishers. Used by permission. All rights reserved.\(copyrightText)"

let copyrightKJV = "\n\n\nScripture quotations from The Authorized (King James) Version. Rights in the Authorized Version in the United Kingdom are vested in the Crown. Reproduced by permission of the Crown’s patentee, Cambridge University Press.\(copyrightText)"

let copyrightNIV = "\n\n\nScripture taken from the Holy Bible, New International Version. Copyright ©1973, 1978, 1984 by International Bible Society. Used by permission of International Bible Society. NIV and New International Version are trademarks registered in the United States Patent and Trademark office by International Bible Society.\(copyrightText)"

let copyrightData: [String: String] = [
    "English-ESV": "\n\n\nScripture taken from The Holy Bible, English Standard Version. Copyright ©2001 by Crossway Bibles, http://www.crosswaybibles.org, a publishing ministry of Good News Publishers. Used by permission. All rights reserved.\(copyrightText)",

    "English-KJV": "\n\n\nScripture quotations from The Authorized (King James) Version. Rights in the Authorized Version in the United Kingdom are vested in the Crown. Reproduced by permission of the Crown’s patentee, Cambridge University Press.\(copyrightText)",

    "English-NIV": "\n\n\nScripture taken from the Holy Bible, New International Version. Copyright ©1973, 1978, 1984 by International Bible Society. Used by permission of International Bible Society. NIV and New International Version are trademarks registered in the United States Patent and Trademark office by International Bible Society.\(copyrightText)",

    "Spanish": "\(copyrightText)"
]

var languages = [
    "English-ESV",
    "English-KJV",
    "English-NIV",
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

// Initialize Truths with "English-NIV" data
var Truths = Truth(language: "English-NIV")

var tryUpdate = true

