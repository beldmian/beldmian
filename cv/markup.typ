#let link_color = rgb("#8C271E")
#let comment_color = rgb("#A2A79E")
#let text_color = rgb("#000000")
#let main_heading_color = rgb("#F95322")
#let second_heading_color = rgb("#F95322")
#let third_heading_color = rgb("#220e08")
#let bg_color = rgb("#ffffff")
#let selection_bg_color = rgb("#ffffff")

#let make_markup(language) = [
  #import "data/" + language + ".typ": *

  #set par(justify: false, spacing: 0.75em)
  #set text(size: 10pt, font: "CaskaydiaCove NFM", fill: text_color)
  #set list(marker: [|])
  #show heading: it => it.body
  #show link: it => text(fill: link_color, underline(it))

  #set page(
    margin: 1cm,
    fill: bg_color,
    //  header: align(
    //    left,
    //    text(fill: comment_color)[_\/\/ gen at: #datetime.today().display()_ on #link("https://github.com/beldmian/cv")],
    //  ),
  )

  #show heading.where(level: 1): it => block(
    spacing: 1em,
    fill: selection_bg_color,
    width: 100%,
    inset: 0.5em,
    text(size: 20pt, fill: main_heading_color)[#it],
  )
  #show heading.where(level: 2): it => block(
    width: 100%,
    spacing: 1em,
    grid(
      columns: (auto, auto),
      align: horizon,
      gutter: 1em,
      text(fill: second_heading_color)[|> #it], line(length: 100%, stroke: 1pt + second_heading_color),
    ),
  )

  #show heading.where(level: 3): it => emph(text(fill: third_heading_color)[#it])

  #let work_exp(name, company, years, tasks) = [
    #grid(
      columns: (1fr, auto),
      gutter: 1em,
      [
        === #name
      ],
      text(
        fill: comment_color,
        align(right, par(justify: false)[#emph[\/\/ #company \/\/ #years]]),
      ),
    )
    #for (task) in tasks [
      - #task
    ]
  ]

  #let education(name, years, comment) = [
    #grid(
      columns: (1fr, auto),
      gutter: 1em,
      [
        === #name

      ],
      text(
        fill: comment_color,
        align(right, par(justify: false)[#emph[\/\/ #years]]),
      ),
    )
    | #comment
  ]

  #let project(name, year, description, links: (), tags: ()) = [
    #grid(
      columns: (1fr, auto),
      gutter: 1em,
      [
        === #name

      ],
      text(
        fill: comment_color,
        align(right, par(justify: false)[\/\/ #emph[#year]]),
      ),
    )
    | #description

    | #{
      let result = ()
      for i in range(links.len()) {
        let link_item = links.at(i)
        result.push(link(link_item.at(0))[#link_item.at(1)])
      }
      for i in range(tags.len()) { result.push(emph(tags.at(i))) }
      result.join([ \+ ])
    }
  ]

  #let block_grid(..items) = [
    #grid(
      columns: (1fr,),
      gutter: 1.5em,
      ..items,
    )
  ]

  #align(
    horizon,
    block[
      #set align(top)
      #align(center)[
        = #name

        #for i in range(contacts.len()) [
          #if i != 0 [\+ ]
          #link(contacts.at(i).at(0))[#contacts.at(i).at(1)]
        ]
      ]

      == #work_experience_title

      #block_grid(
        text(fill: comment_color)[\/\* #commercial_experience \*\/],
        ..work_experiences.map(exp => work_exp(
          [#exp.at(0)],
          [#exp.at(1)],
          [#exp.at(2)],
          exp.at(3),
        )),
        text(fill: comment_color)[\/\* #non_commercial_experience \*\/],
        ..non_commercial_experiences.map(exp => work_exp(
          [#exp.at(0)],
          [#exp.at(1)],
          [#exp.at(2)],
          exp.at(3),
        )),
      )

      == #skills_title

      #grid(
        columns: 2 * (auto,),
        gutter: 1em,
        ..skills.map(skill => [
          === #skill.at(0)
          #skill.at(1)
        ]),
      )

      == #education_title

      #block_grid(
        ..educations.map(edu => education(
          [#edu.at(0)],
          [#edu.at(1)],
          [#edu.at(2)],
        )),
      )

      == #projects_title

      #block_grid(
        ..projects.map(proj => project(
          [#proj.at(0)],
          [#proj.at(1)],
          [#proj.at(2)],
          links: proj.at(3),
          tags: proj.at(4),
        )),
      )
    ],
  )
]
