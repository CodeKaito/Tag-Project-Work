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


