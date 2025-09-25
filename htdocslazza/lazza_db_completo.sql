CREATE DATABASE lazza_db_completo;

DROP TABLE IF EXISTS canzoni;
DROP TABLE IF EXISTS album;

CREATE TABLE album (
    id INT PRIMARY KEY,
    titolo VARCHAR(255) NOT NULL
);

CREATE TABLE canzoni (
    id INT AUTO_INCREMENT PRIMARY KEY,
    album_id INT,
    titolo VARCHAR(255) NOT NULL,
    testo TEXT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES album(id)
);

-- Inserimento album
INSERT INTO album (id, titolo) VALUES
(1, 'Sirio'),
(2, 'Locura (Opera)'),
(3, 'J');

-- Inserimento canzoni per Sirio
INSERT INTO canzoni (album_id, titolo, testo) VALUES
(1, 'CENERE', 'Heaven is a lie
Just give me some truth
Heaven is a lie
Just give me some truth
Heaven is a lie
Just give me some truth
Heaven is a lie
Ho paura di non riconoscerti mai più
Non credo più alle favole
So che ho un posto, ma non qui
Tra le tue grida in loop
Corro via su una cabriolet
Di noi resteranno soltanto ricordi confusi
Pezzi di vetro
Mi spegni le luci se solo tieni gli occhi chiusi
Mi rendi cieco
Ti penso con me per rialzarmi
''Sto silenzio potrebbe ammazzarmi
Aiutami a sparire come cenere
Mi sento un nodo alla gola
Nel buio balli da sola
Spazzami via come cenere
Ti dirò cosa si prova
Tanto non vedevi l''ora
Ma verrai via con me
Heaven is a lie
Just give me some truth
Ho visto un paio di inferni alla volta
So che vedermi così ti impressiona
Primo in classifica, ma non mi importa
Mi sento l''ultimo come persona
L''ultima volta che ho fatto un pronostico
È andata a finire che mi sono arreso
Sai che detesto che citi l''oroscopo
Ma non sai quanto con me ci abbia preso
Ti prego, abbassa la voce
O da ''sta casa ci cacciano proprio
Ormai nemmeno facciamo l''amore
Direi piuttosto che facciamo l''odio
Ora ti sento distante
Io schifo il mondo e tu guardi
Cercavo una verità che
È sempre in mano ai bugiardi
Aiutami a sparire come cenere
Mi sento un nodo alla gola
Nel buio balli da sola
Spazzami via come cenere
Ti dirò cosa si prova
Tanto non vedevi l''ora
Puoi cancellare il mio nome
Farmi sparire nel fumo
Come un pugnale nel cuore
Come se fossi nessuno
Via come cenere, cenere
Vorrei che andassi via
Lontana da me
Ma sei la terapia
Rinasceremo insieme dalla cenere
Mi sento un nodo alla gola
Nel buio balli da sola
Bella che mi sembri Venere
Scendi che il tempo non vola
Sono qua sotto da un''ora
Tu sei più calda del Sole
Io invece freddo, Mercurio
Lasciamo quelle parole
Dimenticate nel buio
Via come cenere, cenere'),
(1, 'PANICO', 'Sei l''ennesimo sbaglio che potevo anche evitare
Su un tetto al primo appuntamento solo per gridare
Vedersi solo per scopare, poi precipitare giù
E fuori è nebbia fitta
E perché ora stai zitta?
E cosa vuoi che dica?
E come fai tu, come fai a fare sempre finta
E poi darmi una spinta e farmi andare giù?
Tanto lo sai, farò il panico
Come sempre, dimmi ora che fai
Bevo il solito
Sarà tossico e so che non mi farà
Più come una volta
Due buttafuori mi stanno scortando alla porta
Non ho mai avuto un piano, ora ne ho un paio di scorta
Per il panico
Io sono quello che resta per ultimo
A guardare tutti mentre se ne vanno
Entro sempre più freddo e più vuoto
Sembra Milano il primo dell''anno
Sembra che faccio finta di niente
Ma ogni giorno mi allego più storie
So che lo sai come ci si sente
a stare senza un angelo custode
Viviamo come senza un giorno dopo
Lascio l''auto con le chiavi dentro
E corro a prenderti un vestito nuovo
Che starà meglio sul pavimento
Spingo finché quel rimmel ti cade
Tu sei il bene, ma diventi il male
Siamo un capolavoro del cinema
con un finale da dimenticare
E tanto lo sai, farò il panico
Come sempre, dimmi ora che fai
Bevo il solito
Sarà tossico e so che non mi farà
Più come una volta
Due buttafuori mi stanno scortando alla porta
Non ho mai avuto un piano, ora ne ho un paio di scorta
Per il panico
Forse anche stanotte
perdo la voce per dire niente
Penso alle nostre ferite aperte
Sfondo le porte solo se serve
Tanto lo sai, farò il panico
Come sempre, dimmi ora che fai
Bevo il solito
Sarà tossico e so che non mi farà
Più come una volta
Due buttafuori mi stanno scortando alla porta
Non ho mai avuto un piano, ora ne ho un paio di scorta
Per il panico'),
(1, 'OUV3RTURE', 'Vengo dal mito del "Cazzo guardi?"
Fra'', di chi si è fatto il mazzo tardi
Dite a San Pietro che ho chiuso i giochi
Passo domani e gli do le chiavi
Odio che chiedono solo auguri
Sai per un disco quanto mi impegno
Ventiquattro ore le abbiamo tutti
Solo che io le ho sfruttate meglio
Vorrei soltanto rubarle il cuore
Per farlo a pezzi, sì, quando voglio
Non scrivo mai canzoni d''amore, scriverò solo canzoni d''odio
Io vorrei solo fare rumore, qua danno i numeri, polinomio
Ridere mentre sto mondo muore è dire: "Buonanotte, sogni d''oro"
Sono una rissa nel fuori onda, guardo ''sta scena che è moribonda
Oggi non gioco nemmeno, era già troppo facile quando ero fuori forma
Qua fai del bene e la gente dimentica, però se fai male si ricorda
Se non avessi svoltato trovavo il mio sesto senso, sì, di colpa
Io sorrido a ''ste serpi, anche a te che mi elogi che dietro mi parli male
Ho capito l''andazzo ed ho iniziato a correre prima di camminare
Ti assicuro, io sono lo stesso di quando non c''era champagne e caviale
Tu davvero pensavi bastasse una stella Michelin a levarmi la fame?
Tutto torna, ma non torna niente, penso sia solo uno stupido detto
Hai presente il 21 dicembre? Per me il mondo è finito da un pezzo
Se tu avessi davanti una chance, io ti direi di correre subito
Che magari un domani si alzano tutti, come se fai goal nel recupero
Tu fai l''interessato, non sento nemmeno, fra'', tanto so già che fai finta
Nelle tasche c''ho un arcobaleno, ed addosso c''ho sempre qualcosa che è in tinta
Oggi sanno chi sono per strada, dalla figa al balordo al madama
Ti ricordi com''è che iniziava? "Sono Zzala, figlio di puttana"
Serpi alla schiena, cambiano strada
Qual è il problema? Ti vedo in para
¿Qué lo que, mami? Chiamami Zzala
Money su money, è una montagna
Spengo l''iPhone, butto la SIM
Quando mi asciugano peggio di un phon, Simsalabim
Sparisco appena mi hanno dato il saldo al prossimo club
Ci poteva andare peggio, pensa se fossimo te
Due milioni di seguaci, due milioni di cazzoni
Scommetto sono incapaci, anche con le migliori indicazioni
Non ho studiato né lingue né moda
Avevo la testa già altrove, da come vesto sembro poliglotta
Moda italiana, francese, Giappone
Non ti basto se volevi il beef, cercati scuse più valide
Ti balziamo all''unanime
Questa ha due tette che sembrano tre come un anime
Se fai i soldi tu valgono la metà
Come fossero del vecchio conio
Io per farli rischio il manicomio
Faccio mille trick come Tony Hawk
Serpi alla schiena, cambiano strada
Qual è il problema? Ti vedo in para
¿Qué lo que, mami? Chiamami Zzala
Money su money, è una montagna
Serpi alla schiena, cambiano strada
Qual è il problema? Ti vedo in para
¿Qué lo que, mami? Chiamami Zzala
Money su money, è una montagna');

-- Inserimento canzoni per Locura (Opera)
INSERT INTO canzoni (album_id, titolo, testo) VALUES
(2, '100 MESSAGGI', 'Ti prego, non cominciare
Sai che per me è già difficile credere a quanto mi facevi male
Ma se me l''avessi chiesto, avrei scalato l''Everest a mani nude
Anche se odio il freddo e soffro pure di vertigini, io me ne frego
Quando menti, io ti credo
So che sono più di mille quelle cose di me che non tolleravi
Parlare con te è come cercare di afferrare il vento con le mani
Se avevo un problema, mi dicevi di parlarne con chi se ne intende
Guardavo cadere tutto a pezzi, come fosse l''11 settembre
Dimmi ancora una bugia, poi una bugia, poi la verità, ah
Era tutto una follia, però una follia per te non si fa, ah
Non ero più a casa mia neanche a casa mia, solo mille guai
Penso a Davide e Golia, io sarò Golia, tu mi ucciderai
E te l''avrei lasciato fare, perché ero fuori di testa
Dimmi, quando ci si perde, a cosa serve fare festa?
Fumo ''sti fiori del male, tutto quello che mi resta
Ora che mi sento inerme, come un verme in fondo al mezcal
Scordati che mi conosci, ora è tardi anche se piangi
È inutile che mi angosci, mi mandi cento messaggi
A cui non risponderò, oh, non ne sono più capace
Sono diventato tutto ciò che odiavo, e ti assicuro non mi piace
Dimmelo se te ne accorgi, siamo diventati grandi
Anche se ho dieci orologi, non recupererò gli anni
Scusa se non tornerò, oh, non sai quanto mi dispiace
Che abbiamo fatto la guerra, ma non sapevamo come fare pace
Triste quando ci pensavo
Ci mancava tutto quanto, perfino la data di un anniversario
Scrivevano: "È fidanzato", solo perché finanziavo
Ti darei da bere il sangue, perché è tutto ciò che adesso mi è rimasto
Credimi, sembra impossibile accettare che oramai ti ho detto: "Ciao"
Sto in un bilocale che da quando ti ho cacciata sembra una penthouse
Grande tipo il doppio, ma senza la luce, come ci fosse un black out
Non sono sentimentale, delle volte tu aprivi la porta e io nemmeno ti sentivo entrare
Ti volevo a tutti i costi, ma eravamo opposti, proprio come un polo
Stare insieme è l''arte di risolvere i problemi che non ho da solo
Giuro, non so più chi sono, tutto ciò mi dà fastidio
''Sto mondo a misura d''uomo mi fa sentire in castigo
Scordati che mi conosci, ora è tardi anche se piangi
È inutile che mi angosci, mi mandi cento messaggi
A cui non risponderò, oh, non ne sono più capace
Sono diventato tutto ciò che odiavo, e ti assicuro non mi piace
Dimmelo se te ne accorgi, siamo diventati grandi
Anche se ho dieci orologi, non recupererò gli anni
Scusa se non tornerò, oh, non sai quanto mi dispiace
Che abbiamo fatto la guerra, ma non sapevamo come fare pace'),
(2, 'ZERI IN PIÙ (LOCURA)','Non lo ricordo più, oramai, se mi cercasti o ti cercai
Se mi incontrasti o ti incontrai, ma è destino
Il mio orologio fa le sei, è l''alba dei miei nuovi guai
Se te ne vai o se resti qui, che importa?
Col buio pesto tu mi accendi
E, anche se spesso voglio averti, a volte no
Io lo detesto, ma non è altro che
Una locura-cura-cura
Una locura-cura-cura
Una lo'' (okay, Zzala)
Very nice, supercar da Miami Vice
Mentre sto puntando centomila, Crazy Time
Sulla base faccio tricks come Jedi Mind
Col destino scritto sulla fronte come Gemitaiz (una locura)
Hai il ferro nel video, tolta la maschera
Resti una barzelletta, fra'', come le mie da Cattelan (-cura, -cura)
Mi auguro ''sto trend presto passerà
Mettere me con te è come la Darsena con l''Arsenal
Spegnimi la luce come un blackout (blackout)
Che mi sembra tutto fake come SmackDown (SmackDown)
C''è la fila nella hall al mio checkout (checkout)
Solo topi in consolle come deadmau5
Pesce dentro paella alla valenciana
Poi amici come prima, Paola e Chiara (ahah)
Se ascolto il tuo disco, è una tale piaga
Di'' scusa ai bambini alla Balenciaga
Guardami ora
Prega per me se morirò sarà da icona
''Sti zeri in più, problemi in più, è la mia locura
Il tempo passa in fretta sopra al mio Daytona
Però non cura (una lo'')
Se mi davi per morto, uh, come mai ti ho sentito?
Fra'', stavo bene nel torto, uh, mai mi sono pentito
Hai fatto il disco dell''anno, uh, l''ho letto su quel sito
Io non ho paura a dirti, uh, che ti abbiano mentito, ah
Prima della Scala, no, è lo show di Jacopo
Prendimi una scala, devo appendere un platino
Io non sono questi con le crisi di panico
Tutti i forum pieni pure prima dell''Ariston
E penso alle mie quote, ricordo quando ancora erano poche
''Sti rapper sono giovani marmotte
Tu sei il capo di questo, lui il primo a fare quell''altro
E poi mi sembrate il mio disco, mezzo milli di copie (una locura)
Perdonami, milady, ma tutti ''sti geni dove li vedi?
Io odio ''sta gente che non si eleva (-cura, -cura)
Quello di cui sei fan per farsi quella foto che ha in mano il cash
Saranno un paio di mesi che preleva
Guardami ora
Prega per me se morirò sarà da icona
''Sti zeri in più, problemi in più, è la mia locura
Il tempo passa in fretta sopra al mio Daytona
Però non cura
Una locura
Ti fa impazzire, poi ti prende in giro
Se vuole, sa perfino toglierti il respiro
Ma col passar del tempo svanirà' 
);

-- Inserimento canzoni per J
INSERT INTO canzoni (album_id, titolo, testo) VALUES
(3, 'J','Non lo vorrei
Ma mi ricordo quando avevo polvere in mano
Oggi che tolgo la polvere a ''ste nuove J''s
So che non le avrò mai messe per correre invano
Vorrei svegliarmi ogni giorno come fosse sabato
Tutti conoscono Zzala, ma nessuno Jacopo (No)
Lei non ha voglia di farla su, mi dice, "Falla tu"
Quando metti una bandiera poi nessuno parla più
Pallone d''Oro come Platini
Tu per fare hype so che fai le gag
Sopra i muri miei ci sono i platini
Tu sui muri in casa frate c''hai le tag
Se ce la fanno a superarmi, gli do il cazzo come premio
''Ste parole ti arrivano meglio, scrivo in caps-locks come Quavo
Stupide vipere, riescono a farsi bastare le briciole
Persone frivole, vogliono dirmi come devo vivere
Fra'', sono duro a morire, Bruce Willis
Mi uccide solo una stecca di Marlboro
Uso la penna al posto di una 9
Se c''è qualche demone, fra'', che mi aspetta in un angolo
Un''attrice ha buttato il mio disco, non so per quale ragione
Lei non sa che a me non piace l''argento, vale quanto il suo cognome
Giro con tre cellulari nei Balmain, prima avevo un Motorola
Affanculo Conto Arancio, uoh, io conto viola
Damn, ho fatto crash, sull''Audi nuova
Vengo per stare lì 10 minuti, ma pagami un''ora
Di'' alla tua amica, "Non fare la troia"
Tanto per quanto si impegni, fra'', lo sanno tutti
Che l''AIDS si prende una volta sola
Prima la situa era pessima
Ora mi ammiri, mi ammiri
E a me sembra che dentro ''sti Amiri c''è un festival
Sembra che il flow sia di un altro pianeta
Fra'' sono in aria come una cometa
Anche se per te non sono importante
Ripagherei con la stessa moneta
Però mi spiace, fra'', ho solo contante, uoh
Non lo vorrei
Ma mi ricordo quando avevo polvere in mano
Oggi che tolgo la polvere a ''ste nuove J''s
So che non le avrò mai messe per correre invano
Te lo diranno che ho addosso una J come me
J come Jay-Z, J come Michael
Come Santana, come La Furia chiuso nel barrio
J come Jimi, J come Pesci, J come Rambo
J come Joker, J come Jesus, fatemi santo'
);