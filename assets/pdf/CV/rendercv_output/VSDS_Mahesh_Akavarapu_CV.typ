
#import "@preview/fontawesome:0.5.0": fa-icon

#let name = "VSDS Mahesh Akavarapu"
#let locale-catalog-page-numbering-style = context { "VSDS Mahesh Akavarapu - Page " + str(here().page()) + " of " + str(counter(page).final().first()) + "" }
#let locale-catalog-last-updated-date-style = "Last updated in Mar 2025"
#let locale-catalog-language = "en"
#let design-page-size = "us-letter"
#let design-section-titles-font-size = 1.4em
#let design-colors-text = rgb(0, 0, 0)
#let design-colors-section-titles = rgb(0, 79, 144)
#let design-colors-last-updated-date-and-page-numbering = rgb(128, 128, 128)
#let design-colors-name = rgb(0, 79, 144)
#let design-colors-connections = rgb(0, 79, 144)
#let design-colors-links = rgb(0, 79, 144)
#let design-section-titles-font-family = "Source Sans 3"
#let design-section-titles-bold = true
#let design-section-titles-line-thickness = 0.5pt
#let design-section-titles-font-size = 1.4em
#let design-section-titles-type = "with-parial-line"
#let design-section-titles-vertical-space-above = 0.5cm
#let design-section-titles-vertical-space-below = 0.3cm
#let design-section-titles-small-caps = false
#let design-links-use-external-link-icon = true
#let design-text-font-size = 10pt
#let design-text-leading = 0.6em
#let design-text-font-family = "Source Sans 3"
#let design-text-alignment = "justified"
#let design-text-date-and-location-column-alignment = right
#let design-header-photo-width = 3.5cm
#let design-header-use-icons-for-connections = true
#let design-header-name-font-family = "Source Sans 3"
#let design-header-name-font-size = 30pt
#let design-header-name-bold = true
#let design-header-connections-font-family = "Source Sans 3"
#let design-header-vertical-space-between-name-and-connections = 0.7cm
#let design-header-vertical-space-between-connections-and-first-section = 0.7cm
#let design-header-use-icons-for-connections = true
#let design-header-horizontal-space-between-connections = 0.5cm
#let design-header-separator-between-connections = ""
#let design-header-alignment = center
#let design-highlights-summary-left-margin = 0cm
#let design-highlights-bullet = "•"
#let design-highlights-top-margin = 0.25cm
#let design-highlights-left-margin = 0.4cm
#let design-highlights-vertical-space-between-highlights = 0.25cm
#let design-highlights-horizontal-space-between-bullet-and-highlights = 0.5em
#let design-entries-vertical-space-between-entries = 1.2em
#let design-entries-date-and-location-width = 4.15cm
#let design-entries-allow-page-break-in-entries = true
#let design-entries-horizontal-space-between-columns = 0.1cm
#let design-entries-left-and-right-margin = 0.2cm
#let design-page-top-margin = 2cm
#let design-page-bottom-margin = 2cm
#let design-page-left-margin = 2cm
#let design-page-right-margin = 2cm
#let design-page-show-last-updated-date = true
#let design-page-show-page-numbering = true
#let design-links-underline = false
#let design-entry-types-education-entry-degree-column-width = 1cm
#let date = datetime.today()

// Metadata:
#set document(author: name, title: name + "'s CV", date: date)

// Page settings:
#set page(
  margin: (
    top: design-page-top-margin,
    bottom: design-page-bottom-margin,
    left: design-page-left-margin,
    right: design-page-right-margin,
  ),
  paper: design-page-size,
  footer: if design-page-show-page-numbering {
    text(
      fill: design-colors-last-updated-date-and-page-numbering,
      align(center, [_#locale-catalog-page-numbering-style _]),
      size: 0.9em,
    )
  } else {
    none
  },
  footer-descent: 0% - 0.3em + design-page-bottom-margin / 2,
)
// Text settings:
#let justify
#let hyphenate
#if design-text-alignment == "justified" {
  justify = true
  hyphenate = true
} else if design-text-alignment == "left" {
  justify = false
  hyphenate = false
} else if design-text-alignment == "justified-with-no-hyphenation" {
  justify = true
  hyphenate = false
}
#set text(
  font: design-text-font-family,
  size: design-text-font-size,
  lang: locale-catalog-language,
  hyphenate: hyphenate,
  fill: design-colors-text,
  // Disable ligatures for better ATS compatibility:
  ligatures: true,
)
#set par(
  spacing: 0pt,
  leading: design-text-leading,
  justify: justify,
)
#set enum(
  spacing: design-entries-vertical-space-between-entries,
)

// Highlights settings:
#let highlights(..content) = {
  list(
    ..content,
    marker: design-highlights-bullet,
    spacing: design-highlights-vertical-space-between-highlights,
    indent: design-highlights-left-margin,
    body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
  )
}
#show list: set list(
  marker: design-highlights-bullet,
  spacing: 0pt,
  indent: 0pt,
  body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
)

// Entry utilities:
#let three-col(
  left-column-width: 1fr,
  middle-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (auto, auto, auto),
) = [
  #block(
    grid(
      columns: (left-column-width, middle-column-width, right-column-width),
      column-gutter: design-entries-horizontal-space-between-columns,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #middle-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

#let two-col(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, auto),
  column-gutter: design-entries-horizontal-space-between-columns,
) = [
  #block(
    grid(
      columns: (left-column-width, right-column-width),
      column-gutter: column-gutter,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

// Main heading settings:
#let header-font-weight
#if design-header-name-bold {
  header-font-weight = 700
} else {
  header-font-weight = 400
}
#show heading.where(level: 1): it => [
  #set par(spacing: 0pt)
  #set align(design-header-alignment)
  #set text(
    font: design-header-name-font-family,
    weight: header-font-weight,
    size: design-header-name-font-size,
    fill: design-colors-name,
  )
  #it.body
  // Vertical space after the name
  #v(design-header-vertical-space-between-name-and-connections)
]

#let section-title-font-weight
#if design-section-titles-bold {
  section-title-font-weight = 700
} else {
  section-title-font-weight = 400
}

#show heading.where(level: 2): it => [
  #set align(left)
  #set text(size: (1em / 1.2)) // reset
  #set text(
    font: design-section-titles-font-family,
    size: (design-section-titles-font-size),
    weight: section-title-font-weight,
    fill: design-colors-section-titles,
  )
  #let section-title = (
    if design-section-titles-small-caps [
      #smallcaps(it.body)
    ] else [
      #it.body
    ]
  )
  // Vertical space above the section title
  #v(design-section-titles-vertical-space-above, weak: true)
  #block(
    breakable: false,
    width: 100%,
    [
      #if design-section-titles-type == "moderncv" [
        #two-col(
          alignments: (right, left),
          left-column-width: design-entries-date-and-location-width,
          right-column-width: 1fr,
          left-content: [
            #align(horizon, box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles))
          ],
          right-content: [
            #section-title
          ]
        )

      ] else [
        #box(
          [
            #section-title
            #if design-section-titles-type == "with-parial-line" [
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ] else if design-section-titles-type == "with-full-line" [

              #v(design-text-font-size * 0.4)
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ]
          ]
        )
      ]
     ] + v(1em),
  )
  #v(-1em)
  // Vertical space after the section title
  #v(design-section-titles-vertical-space-below - 0.5em)
]

// Links:
#let original-link = link
#let link(url, body) = {
  body = [#if design-links-underline [#underline(body)] else [#body]]
  body = [#if design-links-use-external-link-icon [#body#h(design-text-font-size/4)#box(
        fa-icon("external-link", size: 0.7em),
        baseline: -10%,
      )] else [#body]]
  body = [#set text(fill: design-colors-links);#body]
  original-link(url, body)
}

// Last updated date text:
#if design-page-show-last-updated-date {
  let dx
  if design-section-titles-type == "moderncv" {
    dx = 0cm
  } else {
    dx = -design-entries-left-and-right-margin
  }
  place(
    top + right,
    dy: -design-page-top-margin / 2,
    dx: dx,
    text(
      [_#locale-catalog-last-updated-date-style _],
      fill: design-colors-last-updated-date-and-page-numbering,
      size: 0.9em,
    ),
  )
}

#let connections(connections-list) = context {
  set text(fill: design-colors-connections, font: design-header-connections-font-family)
  set par(leading: design-text-leading*1.7, justify: false)
  let list-of-connections = ()
  let separator = (
    h(design-header-horizontal-space-between-connections / 2, weak: true)
      + design-header-separator-between-connections
      + h(design-header-horizontal-space-between-connections / 2, weak: true)
  )
  let starting-index = 0
  while (starting-index < connections-list.len()) {
    let left-sum-right-margin
    if type(page.margin) == "dictionary" {
      left-sum-right-margin = page.margin.left + page.margin.right
    } else {
      left-sum-right-margin = page.margin * 4
    }

    let ending-index = starting-index + 1
    while (
      measure(connections-list.slice(starting-index, ending-index).join(separator)).width
        < page.width - left-sum-right-margin
    ) {
      ending-index = ending-index + 1
      if ending-index > connections-list.len() {
        break
      }
    }
    if ending-index > connections-list.len() {
      ending-index = connections-list.len()
    }
    list-of-connections.push(connections-list.slice(starting-index, ending-index).join(separator))
    starting-index = ending-index
  }
  align(list-of-connections.join(linebreak()), design-header-alignment)
  v(design-header-vertical-space-between-connections-and-first-section - design-section-titles-vertical-space-above)
}

#let three-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (left, auto, right),
) = (
  if design-section-titles-type == "moderncv" [
    #three-col(
      left-column-width: right-column-width,
      middle-column-width: left-column-width,
      right-column-width: 1fr,
      left-content: right-content,
      middle-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      right-content: middle-content,
      alignments: (design-text-date-and-location-column-alignment, left, auto),
    )
  ] else [
    #block(
      [
        #three-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          middle-content: middle-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let two-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, design-text-date-and-location-column-alignment),
  column-gutter: design-entries-horizontal-space-between-columns,
) = (
  if design-section-titles-type == "moderncv" [
    #two-col(
      left-column-width: right-column-width,
      right-column-width: left-column-width,
      left-content: right-content,
      right-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      alignments: (design-text-date-and-location-column-alignment, auto),
    )
  ] else [
    #block(
      [
        #two-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let one-col-entry(content: "") = [
  #let left-space = design-entries-left-and-right-margin
  #if design-section-titles-type == "moderncv" [
    #(left-space = left-space + design-entries-date-and-location-width + design-entries-horizontal-space-between-columns)
  ]
  #block(
    [#set par(spacing: design-text-leading); #content],
    breakable: design-entries-allow-page-break-in-entries,
    inset: (
      left: left-space,
      right: design-entries-left-and-right-margin,
    ),
    width: 100%,
  )
]

= VSDS Mahesh Akavarapu

// Print connections:
#let connections-list = (
  [#fa-icon("location-dot", size: 0.9em) #h(0.05cm)Seminar für Sprachwissenschaft, R. 158, Keplerstraße 2, Tübingen 72074],
  [#box(original-link("mailto:mahesh.akavarapu@uni-tuebingen.de")[#fa-icon("envelope", size: 0.9em) #h(0.05cm)mahesh.akavarapu\@uni-tuebingen.de])],
  [#box(original-link("https://mahesh-ak.github.io/")[#fa-icon("link", size: 0.9em) #h(0.05cm)mahesh-ak.github.io])],
  [#box(original-link("https://linkedin.com/in/mahesh-akavarapu")[#fa-icon("linkedin", size: 0.9em) #h(0.05cm)mahesh-akavarapu])],
  [#box(original-link("https://github.com/mahesh-ak")[#fa-icon("github", size: 0.9em) #h(0.05cm)mahesh-ak])],
)
#connections(connections-list)



== Research Interests


#one-col-entry(
  content: [Computational Linguistics \/ Natural Language Processing, Historical Linguistics]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [Specifically: Computational Historical Linguistics, Speech Processing, Low Resource NLP]
)


== Education


// YES DATE, YES DEGREE
#three-col-entry(
  left-column-width: 1cm,
  left-content: [#strong[PhD]],
  middle-content: [
    #strong[Indian Institute of Technology Kanpur], Computer Science
  ],
  right-content: [
    July 2019 – Sept 2024
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #v(design-highlights-top-margin);#highlights([GPA: 3.84\/4.00 \(9.6\/10.0\)],[Advisor: Prof. Arnab Bhattacharya],)
  ],
  inset: (
    left: design-entry-types-education-entry-degree-column-width + design-entries-horizontal-space-between-columns + design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, YES DEGREE
#three-col-entry(
  left-column-width: 1cm,
  left-content: [#strong[BT]],
  middle-content: [
    #strong[Indian Institute of Technology Kanpur], Computer Science, Physics \(Second Major\)
  ],
  right-content: [
    July 2014 – May 2019
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #v(design-highlights-top-margin);#highlights([GPA: 3.72\/4.00 \(9.3\/10.0\)],)
  ],
  inset: (
    left: design-entry-types-education-entry-degree-column-width + design-entries-horizontal-space-between-columns + design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)



== Awards \/ Honors


#one-col-entry(
  content: [#strong[Prime Minister's Research Fellowship \(2019-24\):] Grant of INR 200,000 per year \(approx. USD 12,000 in total\) from Ministry of Education, Government of India]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Academic Excellence Award from IIT Kanpur \(2015\):] Awarded to Top 10\% students of the batch]
)


== Experience


#two-col-entry(
  left-content: [
    #strong[University of Tübingen], Postdoctoral Researcher
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Advisor: Prof. Gerhard Jäger],)
  ],
  right-content: [
    Tübingen, Germany

Jan 2025 – present
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Indian Institute of Technology Kanpur], Research Fellow
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Under Prime Minister's Research Fellowship \(Advisor: Prof. Arnab Bhattacharya\)],)
  ],
  right-content: [
    Kanpur, India

Aug 2019 – July 2024
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Indian Institute of Technology Kanpur], Student Researcher, Intern
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([High Performance Computing in CUDA \(Advisor: Prof. Mahendra K. Verma\)],)
  ],
  right-content: [
    Kanpur, India

May 2018 – July 2018
  ],
)



== Publications


#one-col-entry(content:[
  #strong[A Case Study of Cross-Lingual Zero-Shot Generalization for Classical Languages in LLMs]

  #v(-design-text-leading)
  #v(design-highlights-top-margin);V.S.D.S.Mahesh Akavarapu, Hrishikesh Terdalkar, Pramit Bhattacharyya, Shubhangi Agarwal, Vishakha Deulgaonkar, Pralay Manna, Chaitali Dangarikar, Arnab Bhattacharya

#v(design-highlights-top-margin - design-text-leading)Accepted to Findings of #strong[#emph[ACL 2025]]])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[A Likelihood Ratio Test of Genetic Relationship among Languages]

  ],
  right-content: [
    June 2024
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);V.S.D.S.Mahesh Akavarapu, Arnab Bhattacharya

#v(design-highlights-top-margin - design-text-leading)Proc. of #strong[#emph[NAACL 2024]], Mexico City, Mexico])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Automated Cognate Detection as a Supervised Link Prediction Task with Cognate Transformer]

  ],
  right-content: [
    Mar 2024
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);V.S.D.S.Mahesh Akavarapu, Arnab Bhattacharya

#v(design-highlights-top-margin - design-text-leading)Proc. of #strong[#emph[EACL 2024]], St. Julian's, Malta])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Cognate Transformer for Automated Phonological Reconstruction and Cognate Reflex Prediction]

  ],
  right-content: [
    Dec 2023
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);V.S.D.S.Mahesh Akavarapu, Arnab Bhattacharya

#v(design-highlights-top-margin - design-text-leading)Proc. of #strong[#emph[EMNLP 2023]], Singapore])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Creation of a Digital Rig Vedic Index \(Anukramani\) for Computational Linguistic Tasks]

  ],
  right-content: [
    Jan 2023
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);V.S.D.S.Mahesh Akavarapu, Arnab Bhattacharya

#v(design-highlights-top-margin - design-text-leading)Proc. of #strong[#emph[World Sanskrit Conference 2023]], Canberra, Australia])



== Invited Talks


#one-col-entry(
  content: [- Evolutionary Biology-Inspired Language Models in Historical Linguistics, University of Tübingen \(Online\), Apr. 2024],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- Tutorial on LLMs: Finetuning and Prompting, with Arnab Bhattacharya and Shubham K. Nigam, NIT Warangal \(Online\), Mar. 2024],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- Tutorial on Legal Named Entity Recognition, with Shubham K. Nigam, NIT Trichy \(Online\), Dec. 2022],
)


== Teaching Assitance


#one-col-entry(
  content: [- \(CS 689\) #emph[Computational Linguistics for Indian Languages], Instructor: Prof. Arnab Bhattacharya \(Spring 2024, Fall 2022\)],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- \(CS 63\) #emph[Theory of Computation], Instructor: Dr. Raghunath Tewari \(Fall 2023, Fall 2022\)],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- \(CS 315\) #emph[Principles of Database Systems], Instructor: Prof. Arnab Bhattacharya \(Spring 2023, Spring 2021\)],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- \(CS 657\) #emph[Information Retrieval], Instructor: Prof. Arnab Bhattacharya \(Spring 2022\)],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- \(CS 771\) #emph[Introduction to Machine Learning], Instructor: Dr. Nisheeth Srivastava \(Fall 2021\)],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- \(CS 685\) #emph[Data Mining], Instructor: Prof. Arnab Bhattacharya \(Fall 2020\)],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- \(ESC 101\) #emph[Fundamentals of Computing], Instructor: Dr. Nisheeth Srivastava \(Spring 2020\), Dr. Piyush Rai \(Fall 2019\)],
)


== Technologies


#one-col-entry(
  content: [#strong[Languages:] Python, C\/C++, HTML, Shell Scripting etc]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Libraries:] PyTorch, TensorFlow, LangChain, HuggingFace etc]
)


== Personal Details


#one-col-entry(
  content: [#strong[Full Name]: Akavarapu, Venkata Satya Durga Sai Mahesh]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Gender]: Male, #strong[Age]: 28, #strong[Nationality]: Indian]
)


