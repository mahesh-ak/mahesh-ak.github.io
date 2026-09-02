// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.1.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "VSDS Mahesh Akavarapu",
  footer: context { [#emph[VSDS Mahesh Akavarapu -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Sept 2026] ],
  locale-catalog-language: "en",
  page-size: "us-letter",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 9,
    day: 2,
  ),
)


= VSDS Mahesh Akavarapu

#connections(
  [#connection-with-icon("location-dot")[Seminar für Sprachwissenschaft, R. 155, Keplerstraße 2, Tübingen 72074]],
  [#link("mailto:mahesh.akavarapu@uni-tuebingen.de", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[mahesh.akavarapu\@uni-tuebingen.de]]],
  [#link("https://mahesh-ak.github.io/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[mahesh-ak.github.io]]],
  [#link("https://linkedin.com/in/mahesh-akavarapu", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[mahesh-akavarapu]]],
  [#link("https://github.com/mahesh-ak", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[mahesh-ak]]],
)


== Research Interests

Computational Linguistics \/ Natural Language Processing, Historical Linguistics

Specifically: Computational Historical Linguistics, Speech Processing, Low Resource NLP

== Education

#education-entry(
  [
    #strong[Indian Institute of Technology Kanpur], Computer Science

    - GPA: 3.84\/4.00 (9.6\/10.0)

    - Advisor: Prof. Arnab Bhattacharya

  ],
  [
    July 2019 – Sept 2024

  ],
  degree-column: [
    #strong[PhD]
  ],
)

#education-entry(
  [
    #strong[Indian Institute of Technology Kanpur], Computer Science, Physics (Second Major)

    - GPA: 3.72\/4.00 (9.3\/10.0)

  ],
  [
    July 2014 – May 2019

  ],
  degree-column: [
    #strong[BT]
  ],
)

== Awards \/ Honors

#strong[Prime Minister's Research Fellowship (2019-24):] Grant of INR 200,000 per year (approx. USD 12,000 in total) from Ministry of Education, Government of India

#strong[Academic Excellence Award from IIT Kanpur (2015):] Awarded to Top 10\% students of the batch

== Experience

#regular-entry(
  [
    #strong[University of Tübingen], Postdoctoral Researcher

    - Advisor: Prof. Gerhard Jäger

  ],
  [
    Tübingen, Germany

    Jan 2025 – present

    1 year 9 months

  ],
)

#regular-entry(
  [
    #strong[Indian Institute of Technology Kanpur], Research Fellow

    - Under Prime Minister's Research Fellowship (Advisor: Prof. Arnab Bhattacharya)

  ],
  [
    Kanpur, India

    Aug 2019 – July 2024

    5 years

  ],
)

#regular-entry(
  [
    #strong[Indian Institute of Technology Kanpur], Student Researcher, Intern

    - High Performance Computing in CUDA (Advisor: Prof. Mahendra K. Verma)

  ],
  [
    Kanpur, India

    May 2018 – July 2018

    3 months

  ],
)

== Publications

#regular-entry(
  [
    #strong[Hard to Be Heard: Phoneme-Level ASR Analysis of Phonologically Complex, Low-Resource Endangered Languages]

    V.S.D.S.Mahesh Akavarapu, Michael Daniel, Gerhard Jäger

     (Findings of #strong[#emph[ACL 2026]], San Diego, CA-US)

  ],
  [
    July 2026

  ],
)

#regular-entry(
  [
    #strong[A Case Study of Cross-Lingual Zero-Shot Generalization for Classical Languages in LLMs]

    V.S.D.S.Mahesh Akavarapu, Hrishikesh Terdalkar, Pramit Bhattacharyya, Shubhangi Agarwal, Vishakha Deulgaonkar, Pralay Manna, Chaitali Dangarikar, Arnab Bhattacharya

     (Findings of #strong[#emph[ACL 2025]], Vienna, Austria)

  ],
  [
    July 2025

  ],
)

#regular-entry(
  [
    #strong[A Likelihood Ratio Test of Genetic Relationship among Languages]

    V.S.D.S.Mahesh Akavarapu, Arnab Bhattacharya

     (Proc. of #strong[#emph[NAACL 2024]], Mexico City, Mexico)

  ],
  [
    June 2024

  ],
)

#regular-entry(
  [
    #strong[Automated Cognate Detection as a Supervised Link Prediction Task with Cognate Transformer]

    V.S.D.S.Mahesh Akavarapu, Arnab Bhattacharya

     (Proc. of #strong[#emph[EACL 2024]], St. Julian's, Malta)

  ],
  [
    Mar 2024

  ],
)

#regular-entry(
  [
    #strong[Cognate Transformer for Automated Phonological Reconstruction and Cognate Reflex Prediction]

    V.S.D.S.Mahesh Akavarapu, Arnab Bhattacharya

     (Proc. of #strong[#emph[EMNLP 2023]], Singapore)

  ],
  [
    Dec 2023

  ],
)

#regular-entry(
  [
    #strong[Creation of a Digital Rig Vedic Index (Anukramani) for Computational Linguistic Tasks]

    V.S.D.S.Mahesh Akavarapu, Arnab Bhattacharya

     (Proc. of #strong[#emph[World Sanskrit Conference 2023]], Canberra, Australia)

  ],
  [
    Jan 2023

  ],
)

== Invited Talks

- Evolutionary Biology-Inspired Language Models in Historical Linguistics, University of Tübingen (Online), Apr. 2024

- Tutorial on LLMs: Finetuning and Prompting, with Arnab Bhattacharya and Shubham K. Nigam, NIT Warangal (Online), Mar. 2024

- Tutorial on Legal Named Entity Recognition, with Shubham K. Nigam, NIT Trichy (Online), Dec. 2022

== Teaching

- #emph[Automatic Speech Processing], Uni. Tübingen, (Summer 2026)

== Tutoring

- #emph[Signals and Systems], CSJM University, Kanpur (Summer 2024)

- (CS 63) #emph[Theory of Computation], NPTEL, Online (Fall 2023, Fall 2022)

- #emph[Introduction to Machine Learning with Python], CSJM University, Kanpur (Fall 2022)

== Teaching Assistance

- (CS 689) #emph[Computational Linguistics for Indian Languages], IIT Kanpur (Spring 2024, Fall 2022)

- (CS 315) #emph[Principles of Database Systems], IIT Kanpur (Spring 2023, Spring 2021)

- (CS 657) #emph[Information Retrieval], IIT Kanpur (Spring 2022)

- (CS 771) #emph[Introduction to Machine Learning], IIT Kanpur (Fall 2021)

- (CS 685) #emph[Data Mining], IIT Kanpur (Fall 2020)

- (ESC 101) #emph[Fundamentals of Computing], IIT Kanpur (Spring 2020, Fall 2019)

== Technologies

#strong[Languages:] Python, C\/C++, HTML, Shell Scripting etc.

#strong[Libraries:] PyTorch, TensorFlow, LangChain, HuggingFace etc.

== Personal Details

#strong[Full Name]: Akavarapu, Venkata Satya Durga Sai Mahesh

#strong[Gender]: Male, #strong[Age]: 29, #strong[Nationality]: Indian
