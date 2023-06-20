# [GCP] Tag-Project-Work
Progettare e configurare un’architettura cloud per il monitoraggio e controllo di impianti industriali.

## Obiettivo
L'obiettivo di questo project work è quello di progettare, e successivamente configurare,
un'infrastruttura su Google Cloud Platform (GCP) per conto di un’azienda produttrice di
impianti di deumidificazione che desidera monitorare in tempo reale i dati provenienti dalle
schede dei loro impianti. Allo stesso tempo dovrà essere possibile inviare comandi per la
gestione dell’impianto da remoto. L'azienda desidera creare un sistema che consenta alle
schede dei dispositivi di connettersi ad un gateway che raccolga i dati dai sensori in tempo
reale e li invii al cloud GCP per l'elaborazione e la visualizzazione.

## Descrizione project work
Supportare l'intero flusso dei dati dalla raccolta, visualizzazione e invio comandi da remoto. Si chiede di seguire un approccio completo che includa la progettazione dell'architettura, l’ottimizzazione dei dati da inviare e meccanismi di allarme in tempo reale.

## Vincoli
- Progettare un'architettura scalabile ed efficiente che consenta la connessione delle schede dei dispositivi al gateway esterno, l'invio e la ricezione dei dati in cloud GCP
- Sicurezza dei protocolli di comunicazione
- Affidabilità delle connessioni
- Il costo a macchina per i servizi cloud non deve superare € 0,50 / anno

Il team potrà scegliere i servizi GCP che ritiene più adeguati all’ottenimento del risultato. Successivamente, bisognerà studiare una tecnica per ottimizzare al massimo la dimensione dei dati da inviare in cloud, per evitare duplicazioni di informazioni, ma pensando anche che dovranno essere facilmente interrogabili da API o query SQL. Le schede prevedono diversi tipi di variabili, che cambiano in base alla tipologia di macchina.
Ogni variabile è identificata da un codice univoco (indirizzo MODBUS). Un tipo di variabile che le schede producono sono gli allarmi: errori o guasti nella macchina. Sono gli stessi per tutte le macchine: un insieme di allarmi di esempio è il seguente.

### Dimensionamento dei dati 
Il team potrà scegliere i servizi GCP che ritiene più adeguati all’ottenimento del risultato. Successivamente, bisognerà studiare una tecnica per ottimizzare al massimo la dimensione dei dati da inviare in cloud, per evitare duplicazioni di informazioni, ma pensando anche che dovranno essere facilmente interrogabili da API o query SQL.

## Features
È importante quindi organizzare i dati in una struttura applicabile a tutte le macchine e che sia resistente a future aggiunte di nuove variabili o macchine, in modo da poter inviare tutti i dati necessari tramite MQTT in formato binario, numerico e/o stringa.

Infine, è richiesto di progettare meccanismi di allarme in tempo reale che segnalino eventuali anomalie o condizioni critiche. Questo consentirà all'azienda di essere prontamente informata di qualsiasi situazione che richieda un intervento immediato. Sfruttate i servizi di monitoraggio e allarme di GCP per implementare questa funzionalità.
L’aspetto più importante di questo project work è l'inclusione dei costi dell'infrastruttura e del servizio nel costo delle macchine di deumidificazione. Ciò significa che è richiesto di tenerei costi dell’infrastruttura più bassi possibile. È richiesto di calcolare e presentare i costi associati all'infrastruttura implementata, in modo che l'azienda possa includerli nel prezzo finale delle loro macchine.
Ricordiamo che l’intera progettazione dovrà essere svolta secondo le best practice di Google per quanto riguarda la sicurezza, la scalabilità e l'ottimizzazione dei costi durante l'intero
processo.

## Output
- Documento di progetto con assunzioni fatte per la realizzazione della proposta fatta e calculator dei costi teorici di infrastruttura
- Template Terraform o altra soluzione di IaC individuata dal team di lavoro dell’architettura
- Codice sorgente degli script scritti per simulare un impianto
- Screenshot del report di billing del progetto (costi di infrastruttura reali) e confronto con il calcolo teorico mappando eventuali azioni di miglioramento

## Dati
Codice Descrizione Tipologia
500 allarme generico boolean
501 allarme sonde macchina boolean
502 allarmi ingressi boolean
503 allarmi da logiche boolean
504 allarmi circuito frigo 1 boolean
505 allarmi circuito frigo 2 boolean
506 allarmi resettabili boolean
507 allarmi non resettabili boolean
550 guasto sonda CO2 ambiente boolean
551 guasto sonda VOC ambiente boolean
552 guasto sonda temperatura ambiente boolean
553 guasto sonda temperatura esterna boolean
554 guasto sonda temperatura acqua boolean
555 guasto sonda temperatura mandata boolean
556 guasto sonda temperatura protezione antigelo batt acqua boolean
557 guasto sonda temperatura sbrinamento recuperatore boolean
558 guasto sonda umidità ambiente boolean
600 allarme resistenze elettriche grave boolean
601 allarme resistenze elettriche lieve boolean
602 allarme fuga gas boolean
603 allarme ventilazione boolean
604 allarme ventilatore ricircolo boolean
605 allarme ventilatore estrazione boolean
606 allarme ventilatore condensazione boolean
607 allame flussostato grave boolean
608 allarme flussostato lieve boolean
609 allarme sequenza fasi boolean
650 segnalazione pulire filtri boolean
651 segnalazione pulire tubo ionizzatore boolean
652 segnalazione sostituire tubo ionizzatore boolean
653 allarme protezione antigelo batteria acqua boolean
654 allarme protezione batteria acqua lieve boolean
655 allarme alta temperatura acqua per on compressore boolean
656 allarme bassa temperatura per on compressore boolean
657 allarme antigelo batteria acqua kit controllo temperatura mandata grave boolean
658 allarme antigelo batteria acqua kit controllo temperatura mandata lieve boolean
659 allarme macchina scarica boolean
660 allarme mancanza comunicazione con display boolean
661 allarme mancanza comunicazione con ionizzatore boolean
662 allarme mancanza comunicazione modbus master boolean
Un'altra tipologia di variabili sono le variabili binarie: ogni tipologia di macchine ha le proprie
variabili, mappate in modalità differenti. Degli esempi di variabili possono essere i seguenti.
Notare che il codice della variabile è univoco solo all’interno di una tipologia di macchina.
Tipologia A
Codice Descrizione Tipologia
1 On / Off boolean
2 On effettivo boolean
3 Stagione boolean
4 Stagione effettiva boolean
5 Abilitazione fasce orarie su display macchina boolean
6 Deumidifica attiva boolean
7 Richiesta acqua per trattamento aria boolean
8 Warning filtri sporchi boolean
9 Allarme generico boolean
10 Reset allarmi boolean
11 Abilitazione deumidifica boolean
12 Abilitazione riscaldamento boolean
13 Abilitazione raffreddamento boolean
14 Abilitazione free-cooling\heating boolean
15 Presenza riscaldamento dell’aria boolean
16 Presenza raffreddamento dell’aria boolean
17 Presenza recuperatore boolean
18 Presenza free-cooling\heating boolean
19 Riscaldamento attivo boolean
20 Raffreddamento attivo boolean
21 Ricambio attivo boolean
22 Free-cooling\heating attivo boolean
23 Sbrinamento attivo boolean
24 Abilitazione riduzione ventilazione boolean
25 Abilitazione umidifica boolean
26 Sbrinamento recuperatore attivo boolean
27 Presenza condensatore remoto boolean
28 Presenza valvola acqua boolean
29 Presenza valvola acqua on-off boolean
30 Presenza valvola acqua modulante boolean
31 Presenza e abilitazione batteria acqua calda boolean
32 Presenza e abilitazione batteria acqua fredda boolean
33 Presenza controllo temperatura boolean
34 On compressore 1 boolean
35 On compressore 2 boolean
36 On ventilatore mandata boolean
37 On resistenza elettriche boolean
Tipologia B
Codice Descrizione Tipologia
1 Unità ON boolean
2 Forzatura deumidifica boolean
3 Abilitazione forzatura deumidifica [1] boolean
4 Forzatura riscaldamento [2] boolean
5 Abilitazione forzatura riscaldamento [1] boolean
6 Reset allarmi boolean
7 Reset pulizia filtri boolean
8 Forzatura raffreddamento [2] boolean
9 Abilitazione forzatura raffreddamento [1] boolean
10 Stato compressore boolean
11 Stato valvola acqua boolean
12 Stato resistenza elettrica boolean
13 Presenza valvola acqua boolean
14 Presenza resistenza elettrica boolean
15 Presenza allarme boolean
16 Filtri da pulire boolean
17 Presenza ventilatori elettronici boolean
18 Presenza opzione sbrinamento gas caldo boolean
19 Allarme sonda boolean
20 Allarme alta pressione boolean
21 Allarme bassa pressione boolean
22 Allarme macchina scarica boolean
23 Allarme bassa temperatura per ON compressore boolean
24 Allarme sovratemperatura resistenza elettrica boolean
25 Allarme sovratemperatura resistenza elettrica boolean
26 Allarme ventilatore boolean
27 Sbrinamento attivo boolean
28 Richiesta deumidifica boolean
29 Richiesta riscaldamento boolean
30 Richiesta raffreddamento boolean
Le macchine producono anche variabili analogiche (solamente interi e decimali): anche
queste distinte in base alla tipologia.
Tipologia A
Codice Descrizione Tipologia
1 temperatura ambiente float
2 temperatura esterna float
3 umidità relativa ambiente float
4 set umidità relativa float
5 set umidità relativa effettiva float
6 set temperatura / set temperatura inverno float
7 set temperatura estate float
8 set temperatura effettivo float
9 Percentuale ventilatore mandata integer
10 Percentuale ventilatore estrazione integer
11 Percentuale valvola acqua integer
12 Percentuale umidificatore integer
13 Percentuale valvola gas integer
14 Percentuale serranda free-cooling integer
15 Percentuale serranda ricircolo integer
16 Set sbrinamento statico float
17 Differenziale sbrinamento statico float
18 Tempo sgocciolamento sbrinamento statico integer
19 Temperatura mandata in ambiente integer
20 Versione software float
21 Percentuale ricambio, step fisso e minimo di 5% integer
22 Percentuale ricambio effettivo integer
23 Temperatura protezione batteria acqua float
24 Temperatura ingresso batteria acqua float
25 temperatura ambiente float
Tipologia B
Codice Descrizione Tipologia
1 Forzatura umidifica integer
2 Set temperatura float
3 Set umidità relativa float
4 Ventilatore di ricircolo in standby (1 == Off, 2 == Minima, 3 === Nominale) integer
5 Differenziale on raffreddamento float
6 Differenziale off raffreddamento float
7 Differenziale on deumidifica float
8 Differenziale off deumidifica float
9 Differenziale on riscaldamento float
10 Differenziale off riscaldamento float
11 Inizio rampa umidifica float
12 Fine rampa umidifica float
13 Offset temperatura ambiente float
14 Offset umidità ambiente float
15 Ore di attesa promemoria pulizia filtri integer
16 Taratura fase 1 – ventilatore mandata integer
17 Taratura fase 2 – ventilatore mandata integer
18 Taratura fase 2 – ventilatore estrazione integer
19 Taratura fase 3 – ventilatore mandata integer
20 Taratura fase 3 – serranda ricircolo integer
21 Taratura fase 1 – ventilatore mandata integer
22 Taratura fase 2 – ventilatore mandata integer
23 Taratura fase 2 – ventilatore estrazione integer
24 Taratura fase 3 – ventilatore mandata integer
25 Taratura fase 3 – serranda ricircolo integer

